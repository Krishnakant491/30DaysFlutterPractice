import 'package:flutter/material.dart';

class Day04 extends StatefulWidget {
  const Day04({super.key});

  @override
  State<Day04> createState() => _Day04State();
}

class _Day04State extends State<Day04> {
  bool isHomeHover = false,
      isAboutHover = false,
      isServicesHover = false,
      isBlogHover = false,
      isContactHover = false,
      isTextHover = false;
  bool isHomeClick = false,
      isAboutClick = false,
      isServicesClick = false,
      isBlogClick = false,
      isContactClick = false,
      isTextClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 170, 203, 219),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset("assets/images/flutterLogo.png"),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) => setState(() => isHomeHover = true),
              onExit: (_) => setState(() => isHomeHover = false),
              child: GestureDetector(
                onTapUp: (_) => setState(() => isHomeClick = true),
                onTapDown: (_) => setState(() => isHomeClick = false),
                onTapCancel: () => setState(() => isHomeClick = false),
                child: Column(
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        color: isHomeHover ? Colors.blue : Colors.black,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOutCubic,
                      height: 2,
                      width: isHomeClick ? 60 : 0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) => setState(() => isAboutHover = true),
              onExit: (_) => setState(() => isAboutHover = false),
              child: GestureDetector(
                onTapUp: (_) => setState(() => isAboutClick = true),
                onTapDown: (_) => setState(() => isAboutClick = false),
                onTapCancel: () => setState(() => isAboutClick = false),
                child: Column(
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        color: isAboutHover ? Colors.blue : Colors.black,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOutCubic,
                      height: 2,
                      width: isAboutClick ? 62 : 0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) => setState(() => isServicesHover = true),
              onExit: (_) => setState(() => isServicesHover = false),
              child: GestureDetector(
                onTapUp: (_) => setState(() => isServicesClick = true),
                onTapDown: (_) => setState(() => isServicesClick = false),
                onTapCancel: () => setState(() => isServicesClick = false),
                child: Column(
                  children: [
                    Text(
                      "Services",
                      style: TextStyle(
                        color: isServicesHover ? Colors.blue : Colors.black,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOutCubic,
                      height: 2,
                      width: isServicesClick ? 80 : 0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) => setState(() => isBlogHover = true),
              onExit: (_) => setState(() => isBlogHover = false),
              child: GestureDetector(
                onTapUp: (_) => setState(() => isBlogClick = true),
                onTapDown: (_) => setState(() => isBlogClick = false),
                onTapCancel: () => setState(() => isBlogClick = false),
                child: Column(
                  children: [
                    Text(
                      "Blog",
                      style: TextStyle(
                        color: isBlogHover ? Colors.blue : Colors.black,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOutCubic,
                      height: 2,
                      width: isBlogClick ? 45 : 0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) => setState(() => isContactHover = true),
              onExit: (_) => setState(() => isContactHover = false),
              child: GestureDetector(
                onTapUp: (_) => setState(() => isContactClick = true),
                onTapDown: (_) => setState(() => isContactClick = false),
                onTapCancel: () => setState(() => isContactClick = false),
                child: Column(
                  children: [
                    Text(
                      "Contact",
                      style: TextStyle(
                        color: isContactHover ? Colors.blue : Colors.black,
                        // decoration: isContactClick
                        //     ? TextDecoration.underline
                        //     : TextDecoration.none,
                        // decorationColor: Colors.blue,
                        // decorationThickness: 2,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
                      alignment: Alignment.center,
                      height: 2,
                      width: isContactClick ? 75 : 0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 113, 179, 234),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              child: Text("Get Started", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day05');
        },
        label: Text("Day 05"),
        icon: Icon(Icons.navigate_next_outlined),
      ),
    );
  }
}
