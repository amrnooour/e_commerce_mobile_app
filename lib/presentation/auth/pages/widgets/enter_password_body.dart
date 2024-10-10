import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_mobile_app/core/constants.dart/routes_path.dart';
import 'package:e_commerce_mobile_app/core/router/navigation.dart';
import 'package:flutter/material.dart';

class EnterPasswordBody extends StatelessWidget {
  const EnterPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Sign in",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const SizedBox(
            height: 32,
          ),
          const TextField(
            decoration: InputDecoration(hintText: "Password"),
          ),
          const SizedBox(
            height: 16,
          ),
          BasicAppButton(
            onPressed: () {},
            title: "Continue",
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Text(
                "Forgot password ? ",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    customNavigation(context, RoutesPath.forgotPasswordRoute);
                  },
                  child: const Text(
                    "Reset ",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
