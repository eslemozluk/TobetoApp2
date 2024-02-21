import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  const Mytextfield(
      {Key? key,
      required this.hintText,
      required this.obscureText,
      required this.onSaved,
      required this.validator,
      required this.keyboardType})
      : super(key: key);

  final String hintText;
  final bool obscureText;
  final void Function(String?) onSaved;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        // TextField yerine TextFormField kullanıldı
        obscureText: obscureText,
        onSaved: onSaved, // Eklenen kısım
        validator: validator, // Eklenen kısım
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
