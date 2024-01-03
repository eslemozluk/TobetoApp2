import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.onTap}) : super(key: key);

  final Function()?
      onTap; //tıklanma işlemini loginscreen.dart sayfasında tanımlayacağım için constractor oluşturdum.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // inkwell gibi ama sadece etkileşim algılama gerektiği için, GestureDetector kullanılandım.
      onTap:
          onTap, // login sayfasında mybutton(ontap (){}) değrine bu sayfanın gideceği yeri belirleyeceğim.
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 31),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Giriş Yap",
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}