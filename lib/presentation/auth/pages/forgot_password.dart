import 'package:e_commerce_mobile_app/common/widgets/appbar/basic_app_bar.dart';
import 'package:e_commerce_mobile_app/presentation/auth/pages/widgets/forgot_password_body.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BasicAppbar(),
      body: ForgotPasswordBody(
      ),
    );
  }
}