import 'package:e_commerce_mobile_app/core/configs/assets/app_vectors.dart';
import 'package:e_commerce_mobile_app/core/configs/theme/app_colors.dart';
import 'package:e_commerce_mobile_app/core/constants.dart/routes_path.dart';
import 'package:e_commerce_mobile_app/core/router/navigation.dart';
import 'package:e_commerce_mobile_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:e_commerce_mobile_app/presentation/splash/bloc/splash_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashStates>(
      listener: (context, state) {
        if (state is Authenticated) {
          customReplacementNavigate(context, RoutesPath.home);
        } else if (state is UnAuthenticated) {
          customReplacementNavigate(context, RoutesPath.signinRoute);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: SvgPicture.asset(AppVectors.logo),
        ),
      ),
    );
  }
}
