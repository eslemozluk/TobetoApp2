import 'package:flutter/material.dart';

class Applications extends StatelessWidget {
  const Applications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 18),
                    child: Text(
                      "İstanbul Kodluyor\nBilgilendirme",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.done_outline_rounded,
                      color: Color.fromARGB(255, 188, 225, 184),
                    ),
                    title: Text(
                      "İstanbul Kodluyor Başvuru Formu\nonaylandı.",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.done_outline_rounded,
                      color: Color.fromARGB(255, 188, 225, 184),
                    ),
                    title: Text(
                      "İstanbul Kodluyor Belge Yükleme\nFormu onaylandı..",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 12,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF00D29B),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              " Kabul Edildi      ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
