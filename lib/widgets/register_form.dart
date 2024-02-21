import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_app/blocs/auth/auth_bloc.dart';
import 'package:tobeto_app/blocs/auth/auth_event.dart';

import 'package:tobeto_app/screens/login_screen/logincard.dart';
import 'package:tobeto_app/screens/login_screen/mytextfield.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _lastname = "";
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    void _submit() {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        context.read<AuthBloc>().add(Register(
              name: _name,
              lastname: _lastname,
              email: _email,
              password: _password,
            ));
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                "assets/image/tobeto-logo_beyaz_2.png",
                width: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Hemen Kayıt OL",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Logincard(
              theHeight: MediaQuery.of(context).size.width * 1.2,
              theWidth: MediaQuery.of(context).size.height * 0.4,
              theChild: SingleChildScrollView(
                child: Column(
                  children: [
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Mytextfield(
                                hintText: "Ad",
                                obscureText: false,
                                onSaved: (value) => _name = value!,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Lütfen bir kullanıcı adı giriniz.';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.name),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            Mytextfield(
                                hintText: "Soyad",
                                obscureText: false,
                                onSaved: (value) => _lastname = value!,
                                validator: (value) {},
                                keyboardType: TextInputType.name),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            Mytextfield(
                                hintText: "E-Posta",
                                obscureText: false,
                                onSaved: (value) => _email = value!,
                                validator: (value) {
                                  if (value!.isEmpty || !value.contains('@')) {
                                    return 'Lütfen geçerli bir e-posta adresi giriniz.';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.name),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            Mytextfield(
                                hintText: "Şifre",
                                obscureText: true,
                                onSaved: (value) => _password = value!,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 8) {
                                    return 'Şifre en az 8 karakter uzunluğunda olmalıdır.';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.multiline),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            ElevatedButton(
                              onPressed: _submit,
                              child: const Text("KAYIT OL"),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
