import 'package:e_commerce_mobile_app/core/configs/theme/app_theme.dart';
import 'package:e_commerce_mobile_app/core/router/app_router.dart';
import 'package:flutter/material.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
