abstract class SignupStates {}

class SignupInitial extends SignupStates {}

class SignupLoading extends SignupStates {}

class SignupFailure extends SignupStates {
  final String errorMessage;

  SignupFailure({required this.errorMessage});

}

class SignupSuccess extends SignupStates {}
