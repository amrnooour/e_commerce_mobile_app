import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AgesDisplayStates {}

class AgesInitial extends AgesDisplayStates {}

class AgesLoading extends AgesDisplayStates {}

class AgesSuccess extends AgesDisplayStates {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> data;
  AgesSuccess({required this.data});
}

class AgesFailure extends AgesDisplayStates {
  final String message;
  AgesFailure({required this.message});
}
