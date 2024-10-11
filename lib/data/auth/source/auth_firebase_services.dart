import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_mobile_app/data/auth/models/user_creation_req.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthFirebaseServices {
  Future<Either> signup(UserCreationReq user);
}

class AuthFirebaseServicesImpl extends AuthFirebaseServices {
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
      String message = "";
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      }
      return left(message);
    } 
    }
  }

