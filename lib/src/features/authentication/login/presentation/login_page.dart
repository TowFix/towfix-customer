import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:towfix/core/constants/assets/images.dart';
import 'package:towfix/core/constants/color/colors.dart';

class LoginPage extends ConsumerStatefulWidget {
  static const id = '/login';
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      Images.auth,
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Welcome to TowFix.',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                  textScaleFactor: 0.8,
                ),
              ),
              // SizedBox(height: 10),
              Text(
                'Enter email and password to sign in',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: TowFixColors.main.withOpacity(0.4),
                  ),
                  hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: const Color(0xff3b3b3b).withOpacity(0.56)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: TowFixColors.main.withOpacity(0.4),
                      )),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  prefixIcon: Icon(
                    Icons.lock_sharp,
                    color: TowFixColors.main.withOpacity(0.4),
                  ),
                  hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: const Color(0xff3b3b3b).withOpacity(0.56)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: TowFixColors.main.withOpacity(0.4),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign In'),
                  ),
                ),
              ),
              Row(children: const [
                Expanded(child: Divider()),
                Text('or Sign In with'),
                Expanded(child: Divider()),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Image.asset(Images.facebookIcon)),
                  TextButton(
                      onPressed: () {}, child: Image.asset(Images.googleIcon)),
                  TextButton(
                      onPressed: () {}, child: Image.asset(Images.appleIcon)),
                ],
              ),
              // Spacer(),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: RichText(
                      text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: const Color(0xff3b3b3b)
                                      .withOpacity(0.56)),
                          children: [
                            TextSpan(
                                text: ' Sign Up',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: TowFixColors.orange))
                          ]),
                    )),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }
}
