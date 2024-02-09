import 'package:flutter/material.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.green,
      child: Center(
        child: Text("Duyuru ve Haberlerim Detay"),
      ),
    );
  }
}
