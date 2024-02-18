import 'package:flutter/material.dart';

class BuildBanner extends StatefulWidget {
  const BuildBanner({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BuildBannerState createState() => _BuildBannerState();
}

class _BuildBannerState extends State<BuildBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          image: const DecorationImage(
            image: AssetImage("assets/image/banner_1.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
