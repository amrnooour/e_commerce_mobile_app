import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_mobile_app/core/configs/assets/app_vectors.dart';
import 'package:e_commerce_mobile_app/core/constants.dart/routes_path.dart';
import 'package:e_commerce_mobile_app/core/router/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordResetEmail extends StatelessWidget {
  const PasswordResetEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppVectors.emailSending),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "We Sent you an Email to reset\n your password.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 115),
            child: BasicAppButton(
              onPressed: () {
                customReplacementNavigate(context, RoutesPath.signinRoute);
              },
              title: "Return to Login",
            ),
          )
        ],
      ),
    );
  }
}
