import 'package:flutter/material.dart';

class Day03 extends StatefulWidget {
  const Day03({Key? key}) : super(key: key);

  @override
  State<Day03> createState() => _Day03State();
}

class _Day03State extends State<Day03> {
  bool isHover = false;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 03"), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 350,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 15,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 187, 235, 235),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Basic Plan",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14),
                  Center(
                    child: Text(
                      "\$19/month",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: Text(
                      "Build Monthly",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 15),
                  Divider(indent: 15, endIndent: 15),
                  SizedBox(height: 15),

                  customeList("Access to basic features"),
                  customeList("10GB cloud storage"),
                  customeList("Email support"),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (_) => setState(() {
                        isHover = true;
                      }),
                      onExit: (_) => setState(() => isHover = false),
                      child: GestureDetector(
                        onTapDown: (_) => setState(() {
                          isPressed = false;
                        }),
                        onTapUp: (_) => setState(() {
                          isPressed = true;
                        }),
                        onTapCancel: () => setState(() => isPressed = false),
                        child: AnimatedContainer(
                          duration: Duration(microseconds: 10),
                          transform: isPressed
                              ? (Matrix4.identity()..scale(0.97))
                              : Matrix4.identity(),

                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: isHover ? Colors.blue[700] : Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            color: (isHover || isPressed)
                                ? Colors.white
                                : Color(0xFFD9EEEE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "• Default ",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 58, 110, 199),
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            color: isHover
                                ? Color(0xFFD9EEEE)
                                // : const Color.fromARGB(255, 109, 157, 230),
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "• Hover ",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 58, 110, 199),
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),

                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            color: isPressed
                                ? Color(0xFFD9EEEE)
                                // : const Color.fromARGB(255, 109, 157, 230),
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "• Active ",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 58, 110, 199),
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day04');
        },
        label: Text("Day 04"),
        icon: Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  Widget customeList(String displayText) {
    return Padding(
      padding: EdgeInsets.only(left: 20, bottom: 10),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                "✓",
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(width: 12),
          Text(displayText, style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }

  // Widget customgestureDetector(String){
  //   return Container(
  //     decoration: Box,
  //     child: ,
  //   );
  // }
}
