import 'package:e_commerce_mobile_app/data/auth/models/user_signin_req.dart';
import 'package:e_commerce_mobile_app/domain/auth/repos/auth_repo.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/signin_states.dart';
import 'package:e_commerce_mobile_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninCubit extends Cubit<SigninStates> {
  SigninCubit() : super(SigninInitial());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signin() async {
    emit(SigninLoading());
    var data = await sl<AuthRepo>()
        .signin(UserSigninReq(email: email.text, password: password.text));

    data.fold(
        (error) => emit(SigninFailure(errorMessage: error)), (success) => emit(SigninSuccess()));
  }
}
