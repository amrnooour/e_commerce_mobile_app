import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_mobile_app/core/constants.dart/routes_path.dart';
import 'package:e_commerce_mobile_app/core/router/navigation.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    SignupCubit cubit = context.read();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            const SizedBox(
              height: 32,
            ),
            TextField(
              controller: cubit.firstName,
              decoration: const InputDecoration(hintText: "Firstname"),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              controller: cubit.lastName,
              decoration: const InputDecoration(hintText: "Lastname"),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              controller: cubit.emailAddress,
              decoration: const InputDecoration(hintText: "Email Address"),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              controller: cubit.password,
              decoration: const InputDecoration(hintText: "Password"),
            ),
            const SizedBox(
              height: 16,
            ),
            BasicAppButton(
              onPressed: () {
                customNavigation(context, RoutesPath.genderAndAgeSelection);
              },
              title: "Continue",
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const Text(
                  "Do you have an Account ? ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      customReplacementNavigate(context, RoutesPath.signinRoute);
                    },
                    child: const Text(
                      "Sign in ",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
