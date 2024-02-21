//bloc sayfasını oluşturmadan önce projeye bloc pattern paketini yüklüyoruz.
//FLUTTER PUB ADD FLUTTER_BLOC
// Artık bloc isimli class'ı extends ederek hangi event, state kullanıcağını söyleyecegiz.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_app/blocs/auth/auth_event.dart';
import 'package:tobeto_app/blocs/auth/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;
  AuthBloc(FirebaseAuth? firebaseAuth, FirebaseFirestore? firebaseFirestore)
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance,
        super(Initial()) {
    _firebaseAuth.authStateChanges().listen(
      (user) {
        if (user != null) {
          emit(Authenticated(user: user));
        } else {
          emit(NotAuthenticated());
        }
      },
    );
    on<LoginEvent>((event, emit) async {
      try {
        UserCredential userCredential =
            await _firebaseAuth.signInWithEmailAndPassword(
                email: event.email, password: event.password);
      } on FirebaseAuthException catch (e) {
        (emit(NotAuthenticated(errormessage: e.message)));
      }
    });

    on<Register>((event, emit) async {
      try {
        UserCredential userCredential =
            await _firebaseAuth.createUserWithEmailAndPassword(
                email: event.email, password: event.password);
        _firebaseFirestore
            .collection("user")
            .doc(userCredential.user!.uid)
            .set({
          "email": event.email,
          "password": event.password,
          "registerDate": DateTime.now()
        });
      } on FirebaseAuthException catch (e) {}
    });
    on<LogoutEvent>((event, emit) async {
      await _firebaseAuth.signOut();
    });
  }
}
