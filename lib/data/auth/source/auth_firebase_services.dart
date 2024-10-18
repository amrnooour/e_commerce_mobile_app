import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_mobile_app/data/auth/models/user_creation_req.dart';
import 'package:e_commerce_mobile_app/data/auth/models/user_signin_req.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthFirebaseServices {
  Future<Either> signup(UserCreationReq user);
  Future<Either> signin(UserSigninReq user);
  Future<Either> getAges();
  Future<Either> resetPassword(String email);
}

class AuthFirebaseServicesImpl extends AuthFirebaseServices {
  String message = '';
  @override
  Future<Either> signup(UserCreationReq user) async {
    try {
      var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.emailAddress!,
        password: user.password!,
      );

      await FirebaseFirestore.instance
          .collection("users")
          .doc(data.user!.uid)
          .set({
        "firstName": user.firstName,
        "lastName": user.lastName,
        "email": user.emailAddress,
        "gender": user.gender,
        "age": user.age
      });

      return right("success sign in");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      }
      return left(message);
    }
  }

  @override
  Future<Either> getAges() async {
    try {
      var data = await FirebaseFirestore.instance.collection("ages").get();
      return right(data.docs);
    } catch (e) {
      return left("please try again");
    }
  }

  @override
  Future<Either> signin(UserSigninReq user) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: user.email!, password: user.password!);
      return right("Sign in Successfly");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      }
      return left(message);
    }
  }

  @override
  Future<Either> resetPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return right("the reset password sent to your email");
    } catch (e) {
      return left("please try again");
    }
  }
}
