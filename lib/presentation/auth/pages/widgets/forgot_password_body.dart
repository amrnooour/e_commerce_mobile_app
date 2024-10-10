import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Forgot Password",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const SizedBox(
            height: 32,
          ),
          const TextField(
            decoration: InputDecoration(hintText: "Enter Email Address"),
          ),
          const SizedBox(
            height: 16,
          ),
          BasicAppButton(
            onPressed: () {},
            title: "Continue",
          ),
        ],
      ),
    );
  }
}
