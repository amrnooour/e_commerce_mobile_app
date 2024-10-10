import 'package:e_commerce_mobile_app/core/constants.dart/routes_path.dart';
import 'package:e_commerce_mobile_app/presentation/auth/pages/enter_password.dart';
import 'package:e_commerce_mobile_app/presentation/auth/pages/forgot_password.dart';
import 'package:e_commerce_mobile_app/presentation/auth/pages/signin.dart';
import 'package:e_commerce_mobile_app/presentation/auth/pages/signup.dart';
import 'package:e_commerce_mobile_app/presentation/splash/pages/splash.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const Splash(),),
  GoRoute(path: RoutesPath.signinRoute,builder: (context, state) => const Signin(),),
  GoRoute(path: RoutesPath.enterPasswordRoute,builder: (context, state) => const EnterPassword(),),
  GoRoute(path: RoutesPath.forgotPasswordRoute,builder: (context, state) => const ForgotPassword(),),
  GoRoute(path: RoutesPath.signupRoute,builder: (context, state) => const Signup(),),


]);
