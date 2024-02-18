import 'package:flutter/material.dart';

class EducationDetail1 extends StatelessWidget {
  const EducationDetail1({
    Key? key,
    required this.image,
    required this.title,
    required this.outlinedButton,
    required this.dateTime,
  }) : super(key: key);
  final ImageProvider<Object> image;
  final String title;
  final VoidCallback outlinedButton;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    String formattedDate =
        "${dateTime.day}.${dateTime.month}.${dateTime.year} ${dateTime.hour}:${dateTime.minute}";

    return Container(
      width: double.maxFinite,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(178, 242, 242, 242),
        border: Border.all(color: Colors.white, width: 4.0),
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: image,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Text(formattedDate),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: OutlinedButton(
                  onPressed: outlinedButton,
                  child: const Text("Eğitime Git"),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(10, 15),
                    backgroundColor: const Color.fromARGB(255, 251, 248, 248),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
