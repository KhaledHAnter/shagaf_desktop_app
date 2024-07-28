import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shagaf_desktop_app/Core/utils/app_router.dart';
import 'package:shagaf_desktop_app/Core/utils/styles.dart';
import 'package:shagaf_desktop_app/Features/userCrdentials/presentaion/views/widgets/form_item.dart';
import 'package:shagaf_desktop_app/Features/userCrdentials/presentaion/views/widgets/login_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool obscureText = true,
      reminderMe = false,
      autoValidate = false,
      isLoading = false;
  String? email, password;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Text(
          "Nice to see you again",
          style: Styles.semiBold20,
          textAlign: TextAlign.start,
        ),
        const Gap(24),
        Form(
          key: formKey,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FormItem(
                label: "User name",
                hint: "Enter your user name",
                onChanged: (p0) {
                  email = p0;
                },
                autoValidate: autoValidate,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return "Enter email";
                  }
                  return null;
                },
              ),
              const Gap(24),
              FormItem(
                label: "Password",
                hint: "Enter password",
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: obscureText
                      ? const Icon(Iconsax.eye4)
                      : const Icon(Iconsax.eye_slash5),
                ),
                obscureText: obscureText,
                onChanged: (p0) {
                  password = p0;
                },
                autoValidate: autoValidate,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return "Enter password";
                  } else if (p0.length < 8) {
                    return "Password must be at least 8 characters";
                  }
                  return null;
                },
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          CupertinoSwitch(
                            value: reminderMe,
                            onChanged: (value) {
                              setState(() {
                                reminderMe = value;
                              });
                            },
                          ),
                          const Text(
                            "Remember me",
                            style: Styles.regular14,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget password?",
                          style: Styles.regular14
                              .copyWith(color: const Color(0xff007AFF)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(32),
              LoginButton(
                text: isLoading ? "Loading..." : "Sign in",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      isLoading = true;
                    });
                    Future.delayed(const Duration(seconds: 3), () {
                      setState(() {
                        isLoading = false;
                      });
                      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
                    });
                  } else {
                    setState(() {
                      autoValidate = true;
                    });
                  }
                },
                isLoading: isLoading,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
