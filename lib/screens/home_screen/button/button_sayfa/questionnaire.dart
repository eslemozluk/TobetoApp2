import 'package:flutter/material.dart';

class Questionnaire extends StatelessWidget {
  const Questionnaire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 232, 229, 229),
        image: DecorationImage(
            image: AssetImage(
              "assets/image/anket.png",
            ),
            fit: BoxFit.scaleDown),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          top: 180,
        ),
        child: Text(
          "Atanmış herhangi bir anketiniz bulunmamaktadır",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.purple[700], fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
