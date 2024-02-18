import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  const GradientCard(
      {Key? key,
      required this.colorcard1,
      required this.colorcard2,
      required this.colorcard3,
      required this.baslik,
      required this.onPressed})
      : super(key: key);
  final Color colorcard1;
  final Color colorcard2;
  final Color colorcard3;

  final String baslik;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.22,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        gradient: LinearGradient(
          colors: [colorcard1, colorcard2, colorcard3],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            baslik,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.background,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text("Başla",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.background,
                      fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.6,
                    MediaQuery.of(context).size.height * 0.04,
                  ))),
        ],
      ),
    );
  }
}
