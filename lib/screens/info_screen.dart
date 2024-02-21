import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/login_screen/login_screen.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              Image.asset(
                "assets/image/tobeto_1.png",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/image/tobeto_2.png",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/image/tobeto_3.png",
                fit: BoxFit.cover,
              ),
            ],
            onPageChanged: (index) {
              // Sayfa değişimleri burada takip edilebilir
              setState(() {
                currentPage = index;
              });
            },
          ),
          if (currentPage == 2)
            // Eğer şu anki sayfa 3. sayfa ise

            Positioned(
              bottom: MediaQuery.of(context).size.height / 6.5,
              left: MediaQuery.of(context).size.width / 3,
              child: ElevatedButton(
                onPressed: () {
                  // Butona tıklandığında yapılacak işlemler
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: const Text("Hemen Başla"),
              ),
            ),
        ],
      ),
    );
  }
}
