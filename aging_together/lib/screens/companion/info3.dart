import 'package:aging_together/screens/caretaker_feature/size_configs.dart';
import 'package:aging_together/screens/companion/info2.dart';
import 'package:flutter/material.dart';
import 'info4.dart';
import 'info3.dart';

class info3 extends StatefulWidget {
  static const String id = 'Preferences';
  @override
  State<info3> createState() => _MoreInfo2();
}

class _MoreInfo2 extends State<info3> {
  final formKey = GlobalKey<FormState>();
  String name = "Preferences";
  @override
  bool? music = false;
  bool? yoga = false;
  bool? skills = false;
  bool? none = false;

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
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => info2()));
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 20,
              )),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 30.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          "What you like doing the most? Choose from the options given below.",
                          style: TextStyle(
                              color: Color.fromARGB(255, 35, 34, 34),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      CheckboxListTile(
                        value: music,
                        onChanged: (value) {
                          setState(() {
                            music = value;
                          });
                        },
                        activeColor: const Color.fromRGBO(8, 143, 143, 0.5),
                        title: const Text("Listening to Music",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      CheckboxListTile(
                        value: yoga,
                        onChanged: (value) {
                          setState(() {
                            yoga = value;
                          });
                        },
                        activeColor: const Color.fromRGBO(8, 143, 143, 0.5),
                        title: const Text("Yoga",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      CheckboxListTile(
                        value: skills,
                        onChanged: (value) {
                          setState(() {
                            skills = value;
                          });
                        },
                        activeColor: const Color.fromRGBO(8, 143, 143, 0.5),
                        title: const Text("Learning new Skills",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      CheckboxListTile(
                        value: none,
                        onChanged: (value) {
                          setState(() {
                            none = value;
                          });
                        },
                        activeColor: const Color.fromRGBO(8, 143, 143, 0.5),
                        title: const Text("None of the above",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => info4()));
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
                              'NEXT STEP',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]))));
  }
}
