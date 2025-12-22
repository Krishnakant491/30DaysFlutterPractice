import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Day01 extends StatelessWidget {
  const Day01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 167, 184, 198),
      appBar: AppBar(title: Text("Day01"), centerTitle: true),
      body: Center(
        child: Container(
          height: 500,
          width: 320,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                foregroundColor: Colors.red,
                backgroundImage: NetworkImage(
                  "https://t3.ftcdn.net/jpg/13/11/22/86/240_F_1311228699_YoiLc5aJ3RWz3uRfdEtlV0UYSQjqf7RW.jpg",
                ),
              ),
              SizedBox(height: 5),
              Text(
                "John Doe",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  // color: Colors.black,
                ),
              ),
              Text(
                "Web Developer",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none,
                  // color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Divider(),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Passionate about coding and building awesome websites. Love to learn and create!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 125, 124, 124),
                      fontWeight: FontWeight.w200,
                      decoration: TextDecoration.none,
                      // color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customButtom("Follow"),
                  customButtom("Message"),
                  customButtom("Contact"),
                ],
              ),
              SizedBox(height: 25),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook,
                    color: const Color.fromARGB(255, 14, 132, 229),
                    size: 28,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/images/twitterLogo.png",
                    height: 25,
                    width: 25,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/images/instaLogo.png",
                    height: 25,
                    width: 25,
                  ),

                  // FaIcon(FontAwesomeIcons.twitter, color: Colors.blue),
                  // Text(
                  //   "🅾",
                  //   style: TextStyle(
                  //     color: Colors.pink[300],
                  //     fontSize: 25,
                  //     decoration: TextDecoration.none,
                  //     // backgroundColor: Colors.black,
                  //   ),
                  // ),
                  SizedBox(width: 10),
                  // FaIcon(FontAwesomeIcons.instagram, color: Colors.blue),
                  // Icon(Icons.instagram, color: Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day02');
        },
        label: Text("Day 02"),
        icon: const Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  Widget customButtom(String displayText) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 4, 99, 178),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
      ),
      child: Text(displayText, style: TextStyle(color: Colors.white)),
    );
  }
}
