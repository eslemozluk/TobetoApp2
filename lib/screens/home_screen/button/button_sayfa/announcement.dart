import 'package:flutter/material.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            image: AssetImage("assets/image/duyuru.png"), fit: BoxFit.cover),
      ),
      child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(
                top:
                    20), //??????? tıkla textbuttonu duyuru ve haber yazısının altında olacak
            child: Text(
              "TIKLA",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          )),
    );
  }
}
