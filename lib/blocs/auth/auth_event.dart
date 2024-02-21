abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  String email;
  String password;

  LoginEvent({required this.email, required this.password});

  //eventler veri alabilir.
  //durum yonetimini saglar.
}

class Register extends AuthEvent {
  String name;
  String lastname;
  String email;
  String password;

  Register({
    required this.name,
    required this.lastname,
    required this.email,
    required this.password,
  });
}

class LogoutEvent extends AuthEvent {}
