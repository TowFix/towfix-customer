import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:towfix/core/utils/utils.dart';
import 'package:ui_common/ui_common.dart';

class CustomImagePicker extends StatefulWidget {
  final String? imageUrl;
  final double? height;
  final double? width;
  final String? hintText;
  final ValueNotifier<String> imageNotifier;

  final OnCompose onCompose;

  const CustomImagePicker({
    super.key,
    this.imageUrl,
    this.height,
    this.width,
    this.hintText,
    required this.imageNotifier,
    required this.onCompose,
  });

  @override
  State<CustomImagePicker> createState() => _CustomImagePickerState();
}

class _CustomImagePickerState extends State<CustomImagePicker> {
  final _picker = ImagePicker();

  // final imageNotifier = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: context.mediaQuery.size.height * 0.25,
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Container(
                        height: 10,
                        width: 50,
                        decoration: BoxDecoration(
                            color: context.colorScheme.inversePrimary,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ListTile(
                      leading: const Icon(FontAwesomeIcons.camera),
                      title: const Text('Camea'),
                      onTap: () async {
                        context.pop();
                        try {
                          final image = await _picker.pickImage(
                              source: ImageSource.camera);
                          if (image != null) {
                            log('image:  $image');
                            widget.imageNotifier.value = image.path;
                            widget.onCompose(image.path);
                          }
                        } catch (e) {
                          // context.pop();
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(content: Text('Error fetching image')));
                          log('e:$e');
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    ListTile(
                      leading: const Icon(FontAwesomeIcons.images),
                      title: const Text('Gallery'),
                      onTap: () async {
                        context.pop();
                        try {
                          final image = await _picker.pickImage(
                              source: ImageSource.gallery);
                          if (image != null) {
                            log('image:  $image');
                            widget.imageNotifier.value = image.path;
                            widget.onCompose(image.path);
                          }
                        } catch (e) {
                          // +
                          log('e:$e');
                        }
                      },
                    ),
                  ],
                ),
              );
            });
      },
      child: Center(
        child: ValueListenableBuilder<String>(
            valueListenable: widget.imageNotifier,
            builder: (context, selectedImage, _) {
              return Container(
                height: widget.height,
                width: widget.width,
                decoration: BoxDecoration(
                  color: context.colorScheme.inversePrimary,
                ),
                child: selectedImage.isNotEmpty
                    ? Image.file(
                        File(selectedImage),
                        fit: BoxFit.cover,
                      )
                    : widget.imageUrl != null
                        ? Image.network(widget.imageUrl!)
                        : Center(
                            child: Text(widget.hintText ?? ''),
                          ),
              );
            }),
      ),
    );
  }
}
