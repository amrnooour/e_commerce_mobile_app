import 'package:e_commerce_mobile_app/domain/auth/repos/auth_repo.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/ages_display_states.dart';
import 'package:e_commerce_mobile_app/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgesDisplayCubit extends Cubit<AgesDisplayStates> {
  AgesDisplayCubit() : super(AgesInitial());

  void getAges() async {
    emit(AgesLoading());
    var data = await sl<AuthRepo>().getAges();
    data.fold((error) {
      emit(AgesFailure(message: error));
    }, (success) {
      emit(AgesSuccess(data: success));
    });
  }
}
