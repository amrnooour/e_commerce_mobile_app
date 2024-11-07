import 'package:e_commerce_mobile_app/domain/auth/repos/auth_repo.dart';
import 'package:e_commerce_mobile_app/presentation/splash/bloc/splash_states.dart';
import 'package:e_commerce_mobile_app/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashStates> {
  SplashCubit() : super(InitialSplash());

  void appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    var isLogin = await sl<AuthRepo>().isLoggedIn();
    if (isLogin) {
      emit(Authenticated());
    } else {
      emit(UnAuthenticated());
    }
  }
}
