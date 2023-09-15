import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:towfix/core/data/dtos/vehicle/vehicle.dart';
import 'package:towfix/core/presentation/widgets/custom_image_picker.dart';
import 'package:towfix/core/providers/common.dart';
import 'package:towfix/src/tow_truck_service/pages/select_vehicle_page.dart';
import 'package:ui_common/ui_common.dart';

import '../../../core/presentation/pages/loading/loading_dialog.dart';

class AddVehiclePage extends ConsumerStatefulWidget {
  const AddVehiclePage({super.key});

  @override
  ConsumerState<AddVehiclePage> createState() => _AddVehiclePageState();
}

class _AddVehiclePageState extends ConsumerState<AddVehiclePage> {
  final vehicleBrandController = TextEditingController();
  final vehicleModelController = TextEditingController();
  final vehicleColorController = TextEditingController();
  final vehicleNumberPlateController = TextEditingController();
  final extraInfoController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final imageNotifier = ValueNotifier<String>('');
  @override
  Widget build(BuildContext context) {
    final cacheService = ref.read(cacheServiceProvider);
    final user = cacheService.profile;

    final dbProvider = ref.read(databaseRepositoryProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Vehicle'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomImagePicker(
                  height: context.mediaQuery.size.height * 0.25,
                  imageNotifier: imageNotifier,
                  onCompose: (file) {}),
              const SizedBox(height: 20),
              TitledBox(
                title: 'Vehicle\'s Brand',
                child: TextFormField(
                  controller: vehicleBrandController,
                  validator: (input) {
                    if (input != null && input.isEmpty) {
                      return 'Vehicle brand field can\'t be empty';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'eg. Toyota, Ford',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TitledBox(
                title: 'Vehicle\'s Model',
                child: TextFormField(
                  controller: vehicleModelController,
                  validator: (input) {
                    if (input != null && input.isEmpty) {
                      return 'Vehicle model field can\'t be empty';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'eg. Camry, Focus',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TitledBox(
                title: 'Vehicle\'s Color',
                child: TextFormField(
                  controller: vehicleColorController,
                  decoration: InputDecoration(
                    hintText: 'eg. black, white, grey',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TitledBox(
                title: 'Number Plate',
                child: TextFormField(
                  controller: vehicleNumberPlateController,
                  validator: (input) {
                    if (input != null && input.isEmpty) {
                      return 'Vehicle number plate can\'t be empty';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'eg. 1234ABC',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TitledBox(
                title: 'Additional Information',
                child: TextFormField(
                  controller: extraInfoController,
                  minLines: 3,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Any additional information about your vehicle',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const SelectVehiclePage()));
                    String image = '';
                    if (imageNotifier.value.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Please provide vehcle image')));
                    }
                    if (_formKey.currentState!.validate()) {
                      showLoading();
                      final imageResult =
                          await dbProvider.uploadImage(imageNotifier.value);

                      // imageResult.fold((failure) {
                      //   log('$failure');
                      //   context.pop();
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text(failure.message),
                      //     ),
                      //   );

                      //   return;
                      // }, (right) {
                      //   image = right;
                      // });

                      imageResult.fold((failure) {
                        log('$failure');
                        context.pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(failure.message),
                          ),
                        );

                        return;
                      }, (right) async {
                        final vehicle = Vehicle.initial().copyWith(
                          user: user,
                          brand: vehicleBrandController.text,
                          color: vehicleColorController.text,
                          extraInfo: extraInfoController.text,
                          model: vehicleModelController.text,
                          numberPlate: vehicleNumberPlateController.text,
                          image: right,
                        );
                        log('start uploading vehicle here');
                        final result = await dbProvider.createVehicle(vehicle);

                        result.fold((l) {
                          context.pop();
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(l.message)));
                        }, (r) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  'Successfully created vehicle ${r.numberPlate}')));
                          context.pop();
                          context.pop();
                        });
                      });
                    }
                  },
                  child: const Text('Add Vehicle'),
                ),
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }

  void showLoading() {
    showDialog(
      context: context,
      builder: (context) => const LoadingDialog(
        description: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text('Creating Vehicle '),
            // InkWell(
            //     onTap: () {
            //       // todo: view terms and conditions here
            //     },
            //     child: Text(
            //       'terms and conditions ',
            //       style: Theme.of(context).textTheme.titleSmall!.copyWith(
            //             fontSize: 14,
            //             color: context.primaryColor,
            //           ),
            //     )),
            Text('for using this app'),
          ],
        ),
      ),
      // todo: remove after logic implementation
      barrierDismissible: true,
    );
  }
}

class TitledBox extends StatelessWidget {
  const TitledBox({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        child,
      ],
    );
  }
}
