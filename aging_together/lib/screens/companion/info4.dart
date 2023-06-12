import 'package:aging_together/screens/caretaker_feature/size_configs.dart';
import 'package:aging_together/screens/companion/info3.dart';
import 'package:aging_together/screens/companion/start.dart';
import 'package:flutter/material.dart';

class info4 extends StatefulWidget {
  static const String id = 'Preferences';
  @override
  State<info4> createState() => _MoreInfo3();
}

class _MoreInfo3 extends State<info4> {
  final formKey = GlobalKey<FormState>();
  String name = "Preferences";
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
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => info3()));
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
                      const Text("What personal qualities do you love?",
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
                              labelText: "Write about your qualities",
                              contentPadding: const EdgeInsets.only(
                                  bottom: 20.0, top: 80.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      const Text("What are you still hoping to accomplish?",
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
                              labelText: "Write about thoughts",
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
                              MaterialPageRoute(builder: (context) => Start()));
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
                              'FINISH',
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
