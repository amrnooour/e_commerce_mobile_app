import 'package:e_commerce_mobile_app/core/constants.dart/routes_path.dart';
import 'package:e_commerce_mobile_app/presentation/auth/pages/signin.dart';
import 'package:e_commerce_mobile_app/presentation/splash/pages/splash.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const Splash(),),
  GoRoute(path: RoutesPath.signinRoute,builder: (context, state) => const Signin(),),

]);
