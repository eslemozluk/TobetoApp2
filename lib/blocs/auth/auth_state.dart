import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class Initial extends AuthState {}

class NotAuthenticated extends AuthState {
  String? errormessage;
  NotAuthenticated({this.errormessage});
}

class Authenticated extends AuthState {
  User? user;
  Authenticated({this.user});
}
