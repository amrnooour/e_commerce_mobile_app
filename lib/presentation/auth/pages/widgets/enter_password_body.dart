import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_mobile_app/core/constants.dart/routes_path.dart';
import 'package:e_commerce_mobile_app/core/router/navigation.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/signin_cubit.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/signin_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterPasswordBody extends StatelessWidget {
  const EnterPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    SigninCubit cubit = context.read();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: BlocConsumer<SigninCubit,SigninStates>(
        listener: (context, state) {
          if (state is SigninSuccess) {
            var snackbar = const SnackBar(
              content: Text("success"),
              behavior: SnackBarBehavior.floating,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          } else if (state is SigninFailure) {
            var snackbar = SnackBar(
              content: Text(state.errorMessage),
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
                "Sign in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const SizedBox(
                height: 32,
              ),
              TextField(
                obscureText: true,
                controller: cubit.password,
                decoration: const InputDecoration(hintText: "Password"),
              ),
              const SizedBox(
                height: 16,
              ),
              state is SigninLoading?
              const Center(child: CircularProgressIndicator(),) :BasicAppButton(
                onPressed: () {
                  cubit.signin();
                },
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
                        customNavigation(
                            context, RoutesPath.forgotPasswordRoute);
                      },
                      child: const Text(
                        "Reset ",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
