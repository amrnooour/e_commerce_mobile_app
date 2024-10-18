// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_mobile_app/core/constants.dart/routes_path.dart';
import 'package:e_commerce_mobile_app/core/router/navigation.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/reset_password_cubit.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/reset_password_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordCubit cubit = context.read();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: BlocConsumer<ResetPasswordCubit, ResetPasswordStates>(
        listener: (context, state) {
          if (state is ResetPasswordSuccess) {
            var snackbar = const SnackBar(
              content: Text("success"),
              behavior: SnackBarBehavior.floating,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
            customNavigation(context, RoutesPath.passwordReserEmail);
          } else if (state is ResetPasswordFailure) {
            var snackbar = SnackBar(
              content: const Text("please try again"),
              behavior: SnackBarBehavior.floating,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          }
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Forgot Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                controller: cubit.email,
                decoration:
                    const InputDecoration(hintText: "Enter Email Address"),
              ),
              const SizedBox(
                height: 16,
              ),
              BasicAppButton(
                onPressed: () {
                  cubit.resetPassword();
                },
                title: "Continue",
              ),
            ],
          );
        },
      ),
    );
  }
}
