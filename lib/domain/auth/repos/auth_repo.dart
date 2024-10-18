import 'package:dartz/dartz.dart';
import 'package:e_commerce_mobile_app/data/auth/models/user_creation_req.dart';
import 'package:e_commerce_mobile_app/data/auth/models/user_signin_req.dart';

abstract class AuthRepo {
  Future<Either> signup(UserCreationReq user);
  Future<Either> getAges();
  Future<Either> signin(UserSigninReq user);
  Future<Either> resetPassword(String email);



}
