class SigninStates{}
class SigninInitial extends SigninStates{}
class SigninLoading extends SigninStates{}
class SigninSuccess extends SigninStates{}
class SigninFailure extends SigninStates{
  final String errorMessage;

  SigninFailure({required this.errorMessage});

}
