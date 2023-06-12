import 'package:aging_together/screens/caretaker_feature/size_configs.dart';
import 'package:aging_together/screens/companion/start.dart';
import 'package:flutter/material.dart';
import 'info2.dart';

class info1 extends StatefulWidget {
  static const String id = 'Preferences';
  @override
  State<info1> createState() => _ProvideInfo();
}

class _ProvideInfo extends State<info1> {
  final formKey = GlobalKey<FormState>();
  String name = "Preferences";
  @override
  bool? male = false;
  bool? female = false;
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
                    context, MaterialPageRoute(builder: (context) => Start()));
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
                      const Text("What's Your Gender?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 35, 34, 34),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      CheckboxListTile(
                        value: male,
                        onChanged: (value) {
                          setState(() {
                            male = value;
                          });
                        },
                        activeColor: const Color.fromRGBO(8, 143, 143, 0.5),
                        title: const Text("Male",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                      CheckboxListTile(
                        value: female,
                        onChanged: (value) {
                          setState(() {
                            female = value;
                          });
                        },
                        activeColor: const Color.fromRGBO(8, 143, 143, 0.5),
                        title: const Text("Female",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ),
                      const Text("What's Your Age?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 35, 34, 34),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(height: 10.0),
                      const TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Enter Your Age",
                              contentPadding:
                                  EdgeInsets.only(bottom: 5.0, top: 12.5),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      const Text("Why do you want a Companion?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 35, 34, 34),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(height: 10.0),
                      const TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Enter the reason",
                              contentPadding:
                                  EdgeInsets.only(bottom: 20.0, top: 80.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => info2()));
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
