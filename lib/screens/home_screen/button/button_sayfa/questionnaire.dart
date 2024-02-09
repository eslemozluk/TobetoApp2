import 'package:flutter/material.dart';

class Questionnaire extends StatelessWidget {
  const Questionnaire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.orange,
      child: Center(
        child: Text("Anketlerim Detay"),
      ),
    );
  }
}
