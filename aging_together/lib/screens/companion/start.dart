import 'package:aging_together/screens/caretaker_feature/size_configs.dart';
import 'package:flutter/material.dart';
import 'info1.dart';
import 'package:unicons/unicons.dart';

class Start extends StatelessWidget {
  static const String id = 'Find Companion';
  final formKey = GlobalKey<FormState>();
  //for drawer text
  static const TextStyle drawerText = TextStyle(
      color: Color.fromARGB(255, 35, 34, 34),
      fontSize: 17,
      fontWeight: FontWeight.w600);
  String name = "Find Companion";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
          title: const Text("Find Companion"),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  UniconsLine.paragraph,
                  color: Colors.white,
                  size: 24,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        //drawer
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'vision');
                },
                child: const Image(
                  image: AssetImage("assets/images/logo_no_bg.png"),
                  height: 150,
                ),
              ),
              //home
              ListTile(
                  leading: const Icon(
                    UniconsLine.home_alt,
                    color: Color.fromARGB(255, 58, 57, 57),
                    size: 30,
                  ),
                  title: const Text(
                    'Home',
                    style: drawerText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'home_screen');
                  }),
              //caretaker
              ListTile(
                  leading: const Icon(
                    UniconsLine.schedule,
                    color: Color.fromARGB(255, 58, 57, 57),
                    size: 30,
                  ),
                  title: const Text(
                    'Book Caretaker',
                    style: drawerText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'care_taker');
                  }),
              //companion
              ListTile(
                  leading: const Icon(
                    UniconsLine.chat_bubble_user,
                    color: Color.fromARGB(255, 58, 57, 57),
                    size: 30,
                  ),
                  title: const Text(
                    'Find companion',
                    style: drawerText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'start');
                  }),

              //Leraning Center
              ListTile(
                  leading: const Icon(
                    UniconsLine.file_contract,
                    color: Color.fromARGB(255, 58, 57, 57),
                    size: 30,
                  ),
                  title: const Text(
                    'Learn',
                    style: drawerText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'learn');
                  }),
              //About us
              ListTile(
                  leading: const Icon(
                    UniconsLine.question_circle,
                    color: Color.fromARGB(255, 58, 57, 57),
                    size: 30,
                  ),
                  title: const Text(
                    'About Us',
                    style: drawerText,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'about_us');
                  }),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: Column(
            children: [
              Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/age.jpg')),
              const SizedBox(height: 30),
              const Text("WELCOME TO AGING TOGETHER",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 14,
              ),
              const Text(
                  "Aging Together is a platform which provides you the opportunity to find a companion who can be someone you share same interest with or simply someone who can accompany you on evening walks.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => info1()));
                },
                child: Container(
                  height: getProportionateScreenHeight(50),
                  width: getProportionateScreenWidth(200),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(8, 143, 143, 1),
                  ),
                  child: const Center(
                    child: Text(
                      'START',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
