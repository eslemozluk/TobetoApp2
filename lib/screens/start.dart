import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_app/blocs/auth/auth_bloc.dart';
import 'package:tobeto_app/blocs/auth/auth_state.dart';
import 'package:tobeto_app/screens/home_screen.dart';
import 'package:tobeto_app/screens/login_screen/login_screen.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      if (state is Authenticated) return const HomeScreen();
      return const LoginScreen();
    });
  }
}
