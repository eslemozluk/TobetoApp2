import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/home_screen/Custom_SearchBar.dart';

import 'package:tobeto_app/screens/home_screen/build_banner.dart';
import 'package:tobeto_app/screens/home_screen/button/button_widget.dart';
import 'package:tobeto_app/screens/home_screen/example.dart';
import 'package:tobeto_app/screens/home_screen/footer.dart';
import 'package:tobeto_app/screens/home_screen/gradient_card/gradient_card_list.dart';
import 'package:tobeto_app/screens/home_screen/welcome_text.dart';

import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';
import 'package:tobeto_app/widgets/register_form.dart';
import 'package:tobeto_app/widgets/speed_dial/SpeedDialWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

bool _isLogin = true;

class _HomeScreenState extends State<HomeScreen> {
  Widget formWidget = _isLogin ? HomeScreen() : RegisterForm();
  int? selectedIndex;
  bool showInfoContainer = false;
  bool showshowInfoContainerTwo = false;
  bool showshowInfoContainerThree = false;
  bool showshowInfoContainerFour = false;
  @override
  void initState() {
    super.initState();
    showInfoContainer = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/image/tobeto-white-logo.png",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      endDrawer: const CompDrawer(),
      floatingActionButton: buildSpeedDial(context),
      body: ListView(
        children: const [
          WelcomeText(), //1
          CustomSearchBar(), //2

          BuildBanner(), //3
          ButtonWidget(), //4
          Example(),
          SizedBox(
            height: 30,
          ),
          GradientCardList(), //5
          Footer(), //5
        ],
      ),
    );
  }
}
