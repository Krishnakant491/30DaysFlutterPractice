import 'package:flutter/material.dart';

class Day06 extends StatefulWidget {
  const Day06({super.key});

  @override
  State<Day06> createState() => _Day06State();
}

class _Day06State extends State<Day06> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Day 06",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          height: 525,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backdrop.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1F2A4A),
                      ),
                      children: [
                        TextSpan(text: "Empower "),
                        TextSpan(
                          text: "Your Business \n",
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(text: "with "),
                        TextSpan(
                          text: "Innovative Solutions ",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Leveraging cutting-edge technology to drive\n"
                    "success and help grow your business",
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                            vertical: 26,
                            horizontal: 48,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      SizedBox(width: 50),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 26,
                            horizontal: 48,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Watch Demo",
                          style: TextStyle(color: Colors.blue, fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          tickText("+1200", "Clients Served"),
                          SizedBox(width: 50),
                          tickText("+99%", "Customer Satisfaction"),
                        ],
                      ),
                      SizedBox(height: 20),
                      tickText("24/7", "Support"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day07');
        },
        label: Text("Day 07"),
        icon: Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  Widget tickText(String highlightDisplayText, String displayText) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 156, 198, 233),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              "✓",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 25, color: Colors.black),
            children: [
              TextSpan(
                text: highlightDisplayText,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: " $displayText"),
            ],
          ),
        ),
      ],
    );
  }
}
