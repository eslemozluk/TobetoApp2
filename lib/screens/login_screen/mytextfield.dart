import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  const Mytextfield({
    Key? key,
    required this.controller, // TextEditingController, metin girişini kontrol etmek için kullanılır.
    required this.hintText, // Kutucukta görüntülenecek yer tutucu (placeholder) metni.
    required this.obscureText, // Metnin görüntülenme şeklini belirler (true: gizli, false: açık).
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller, // Metin kontrolcüsü atanır.
        obscureText: obscureText, // Metnin gizlilik durumu atanır.
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(89, 154, 153, 153)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(209, 131, 131, 131)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          fillColor: Theme.of(context).colorScheme.background,
          filled: true,
          hintText: hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: const Color.fromARGB(209, 122, 122, 122)),
        ),
      ),
    );
  }
}
