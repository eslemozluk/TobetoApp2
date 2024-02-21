// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_app/blocs/auth/auth_bloc.dart';
import 'package:tobeto_app/blocs/auth/auth_event.dart';

import 'package:tobeto_app/widgets/forgot_password.dart';
import 'package:tobeto_app/screens/login_screen/logincard.dart';
import 'package:tobeto_app/screens/login_screen/my_button.dart';
import 'package:tobeto_app/screens/login_screen/mytextfield.dart';

import 'package:tobeto_app/widgets/register_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _islogin = true;
  final _formkey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    Widget formWidget = _islogin ? LoginScreen() : RegisterForm();

    // ignore: no_leading_underscores_for_local_identifiers
    void _submit() {
      if (_formkey.currentState!.validate()) {
        _formkey.currentState!.save();
        context
            .read<AuthBloc>()
            .add(LoginEvent(email: _email, password: _password));
      }
    }

    return Form(
      key: _formkey,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/color-bacground.png"),
              fit: BoxFit.fill,
            ),
          ),
          alignment: Alignment.center,
          child: Logincard(
            theHeight: MediaQuery.of(context).size.width * 1.2,
            theWidth: MediaQuery.of(context).size.height * 0.4,
            theChild: Container(
              child: Column(
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: Image.asset("assets/image/tobeto-white-logo.png"),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Mytextfield(
                      hintText: "E-posta",
                      obscureText: false,
                      onSaved: (value) => _email = value!,
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Lütfen geçerli bir e-posta adresi giriniz.';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Mytextfield(
                      keyboardType: TextInputType.number,
                      hintText: "Şifre",
                      obscureText: true,
                      onSaved: (value) => _password = value!,
                      validator: (value) {
                        if (value!.isEmpty || value.length < 8) {
                          return 'Şifre en az 8 karakter uzunluğunda olmalıdır.';
                        }

                        return null;
                      }),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ForgotPassword(),
                              ),
                            );
                          },
                          child: Text(
                            "Şifremi Unuttum",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  MyButton(onTap: () => _submit()),
                  Column(
                    children: [
                      formWidget,
                      Center(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _islogin = !_islogin;
                            });
                          },
                          child: Text(
                            _islogin
                                ? "Hesabınız yok mu? Kayıt Ol"
                                : "Zaten bir hesabın var mı?, Giriş Yap",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
