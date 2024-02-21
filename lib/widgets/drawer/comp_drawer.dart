import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/calendar_screen/calendar_screen.dart';
import 'package:tobeto_app/screens/catalog_screen/catalog_screen.dart';
import 'package:tobeto_app/screens/home_screen.dart';
import 'package:tobeto_app/screens/profile_screen.dart';
import 'package:tobeto_app/screens/reviews_screen.dart';
import 'package:tobeto_app/screens/tobeto_screen.dart';
import 'package:tobeto_app/widgets/drawer/my_header_driver.dart';

class CompDrawer extends StatefulWidget {
  const CompDrawer({Key? key}) : super(key: key);
  @override
  _CompDrawerState createState() => _CompDrawerState();
}

class _CompDrawerState extends State<CompDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            const MyHeaderDriver(),
            const SizedBox(height: 40),
            Image.asset(
              "assets/image/tobeto-logo.png",
              width: 150,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                leading: const Icon(Icons.home, color: Colors.grey),
                title: Text(
                  "Anasayfa",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
                },
                leading: const Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                ),
                title: Text(
                  "Profilim",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CatalogScreen(),
                  ));
                },
                leading: const Icon(Icons.dashboard, color: Colors.grey),
                title: Text(
                  "Katalog",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CalendarScreen(),
                  ));
                },
                leading: const Icon(Icons.date_range, color: Colors.grey),
                title: Text(
                  "Takvim",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ReviewsScreen(),
                  ));
                },
                leading: const Icon(Icons.star, color: Colors.grey),
                title: Text(
                  "Değerlendirmeler",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TobetoScreen(),
                  ));
                },
                leading: const Icon(Icons.home, color: Colors.amber),
                title: Text(
                  "Tobeto",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 50),
              child: ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.logout_rounded,
                  color: Colors.grey,
                ),
                title: const Text(
                  "Hesabı Kapat",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
