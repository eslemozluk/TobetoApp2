import 'package:flutter/material.dart';

import 'package:tobeto_app/screens/home_screen/button/button_sayfa/education_detail_1.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: EducationDetail1(
            image: const AssetImage("assets/image/Ecmel_Ayral.png"),
            title: "Dr. Ecmel Ayral Hoşgeldin Mesajı",
            dateTime: now,
            outlinedButton: () {},
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: EducationDetail1(
            image: const AssetImage("assets/image/istanbul_kodluyor.png"),
            title: "Eğitimlere Nasıl Katılırım?",
            dateTime: now,
            outlinedButton: () {},
          ),
        ),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded)),
      ],
    );
  }
}
