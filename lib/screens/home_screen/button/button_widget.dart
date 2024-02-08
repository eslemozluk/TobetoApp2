import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/home_screen/button/Styled_Button.dart';

import 'package:tobeto_app/screens/home_screen/button/button_sayfa/announcement.dart';
import 'package:tobeto_app/screens/home_screen/button/button_sayfa/applications.dart';
import 'package:tobeto_app/screens/home_screen/button/button_sayfa/education.dart';
import 'package:tobeto_app/screens/home_screen/button/button_sayfa/questionnaire.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  int currIndex = 0;

  // Farklı içerikte bilgi container'larını saklayan bir liste
  List<Widget> infoContainers = [
    Applications(),
    Education(),
    Announcement(),
    Questionnaire(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledButton(
                  onPressed: () {
                    setState(() {
                      currIndex = 0;
                    });
                  },
                  isButtonPressed: currIndex == 0,
                  buttonText: "Başvurularım",
                ),
                const SizedBox(width: 20),
                StyledButton(
                  onPressed: () {
                    setState(() {
                      currIndex = 1;
                    });
                  },
                  isButtonPressed: currIndex == 1,
                  buttonText: "Eğitimlerim",
                ),
                const SizedBox(width: 20),
                StyledButton(
                  onPressed: () {
                    setState(() {
                      currIndex = 2;
                    });
                  },
                  isButtonPressed: currIndex == 2,
                  buttonText: "Duyuru ve Haberlerim",
                ),
                const SizedBox(width: 20),
                StyledButton(
                  onPressed: () {
                    setState(() {
                      currIndex = 3;
                    });
                  },
                  isButtonPressed: currIndex == 3,
                  buttonText: "Anketlerim",
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: infoContainers[currIndex],
        ),
      ],
    );
  }
}
