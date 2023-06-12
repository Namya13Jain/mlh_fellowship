import 'package:aging_together/screens/caretaker_feature/size_configs.dart';
import 'package:aging_together/screens/helper/commons.dart';
import 'package:aging_together/screens/thanks_enrol.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ExploreCourse extends StatelessWidget {
  const ExploreCourse({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
        title: const Text(
          "Learn",
          style: TextStyle(
            fontSize: 20,
          ),
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
                  Navigator.pushNamed(context, 'companion');
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
                  Navigator.pushNamed(context, 'companion');
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
              height: 30,
            ),
            Center(
              child: Image.network(
                'https://media.istockphoto.com/id/1301201223/photo/a-woman-tailor-works-at-sewing-machine-sews-reuses-fabric-from-old-denim-clothes.jpg?b=1&s=170667a&w=0&k=20&c=twwfci3IXTt3zhKn5MaIP6kmEn7rQWAHzt3OU-8_UD0=',
                height: 150.0,
                width: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "SEWING",
              style: headText,
            ),
            const Text(
              "Coach: Shivani Das",
              style: bodyText,
            ),
            const Text(
              "Duration: 2 Months",
              style: bodyText,
            ),
            const Text(
              "Mode: Online on Google Meet",
              style: bodyText,
            ),
            const Text(
              "Pre-requisites: None",
              style: bodyText,
            ),
            const Text(
              "Batch Timings: 4pm-6pm on Weekends",
              style: bodyText,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThanksCourseEnrol()));
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
                    'ENROL NOW',
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
      ),
    );
  }
}
