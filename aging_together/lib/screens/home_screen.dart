import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import './helper/commons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
        title: const Image(
          image: AssetImage("assets/images/logo_white.png"),
          height: 100,
        ),
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
            //Learning Center
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Welcome to Aging Together",
              style: headText,
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Image(
                image: AssetImage("assets/images/home.jpg"),
                height: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text("See what our Happy Users have to share",
                  style: headText),
            ),
            Container(
              height: 230,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(8, 143, 143, 0.5),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "I was feeling depressed from long time because my wife has died and children left me alone in search for good jobs. When I came to know about Aging Together, I learnt cooking and now spend my time cooking a variety of cuisines.\n\n-Mr. Dilpreet Kaur",
                  style: bodyText,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 230,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(8, 143, 143, 0.5)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "I was feeling depressed from long time because my wife has died and children left me alone in search for good jobs. When I came to know about Aging Together, I learnt cooking and now spend my time cooking a variety of cuisines.\n\n-Mr. Dilpreet Kaur",
                  style: bodyText,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
