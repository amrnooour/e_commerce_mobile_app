import 'package:e_commerce_mobile_app/domain/auth/repos/auth_repo.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/reset_password_states.dart';
import 'package:e_commerce_mobile_app/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordStates> {
  ResetPasswordCubit() : super(ResetPasswordInitial());

  TextEditingController email = TextEditingController();

  resetPassword() async {
    emit(ResetPasswordLoading());
    var data = await sl<AuthRepo>().resetPassword(email.text);
    data.fold((error) => emit(ResetPasswordFailure()),
        (success) => emit(ResetPasswordSuccess()));
  }
}
