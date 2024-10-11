import 'package:dartz/dartz.dart';
import 'package:e_commerce_mobile_app/data/auth/models/user_creation_req.dart';

abstract class AuthRepo {
  Future<Either> signup(UserCreationReq user);
}
