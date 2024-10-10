import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_mobile_app/core/constants.dart/routes_path.dart';
import 'package:e_commerce_mobile_app/core/router/navigation.dart';
import 'package:flutter/material.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 123,
          ),
          const Text(
            "Sign in",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const SizedBox(
            height: 32,
          ),
          const TextField(
            decoration: InputDecoration(hintText: "Email Address"),
          ),
          const SizedBox(
            height: 16,
          ),
          BasicAppButton(
            onPressed: () {
              customNavigation(context, RoutesPath.enterPasswordRoute);
            },
            title: "Continue",
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Text(
                "Dont have an Account ? ",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    customNavigation(context, RoutesPath.signupRoute);
                  },
                  child: const Text(
                    "Create One ",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
