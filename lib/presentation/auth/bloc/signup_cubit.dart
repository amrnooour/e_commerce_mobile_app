import 'package:e_commerce_mobile_app/data/auth/models/user_creation_req.dart';
import 'package:e_commerce_mobile_app/domain/auth/repos/auth_repo.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/signup_states.dart';
import 'package:e_commerce_mobile_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupStates> {
  SignupCubit() : super(SignupInitial());

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  int? gender;
  String? age;

  void signup() async {
    emit(SignupLoading());

    var data = await sl<AuthRepo>().signup(UserCreationReq(
        firstName: firstName.text,
        lastName: lastName.text,
        emailAddress: emailAddress.text,
        password: password.text,
        gender: gender,
        age: age));

    data.fold(
        (error) => emit(SignupFailure(errorMessage: error)), (success) => emit(SignupSuccess()));
  }
}
