import 'package:dartz/dartz.dart';
import 'package:e_commerce_mobile_app/data/auth/models/user_creation_req.dart';
import 'package:e_commerce_mobile_app/data/auth/models/user_signin_req.dart';
import 'package:e_commerce_mobile_app/data/auth/source/auth_firebase_services.dart';
import 'package:e_commerce_mobile_app/domain/auth/repos/auth_repo.dart';
import 'package:e_commerce_mobile_app/service_locator.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either> signup(UserCreationReq user) {
    return sl<AuthFirebaseServices>().signup(user);
  }

  @override
  Future<Either> getAges() async {
    return sl<AuthFirebaseServices>().getAges();
  }

  @override
  Future<Either> signin(UserSigninReq user) {
    return sl<AuthFirebaseServices>().signin(user);
  }

  @override
  Future<Either> resetPassword(String email) {
    return sl<AuthFirebaseServices>().resetPassword(email);
  }

  @override
  Future<bool> isLoggedIn() async {
    return await sl<AuthFirebaseServices>().isLoggedIn();
  }
}
