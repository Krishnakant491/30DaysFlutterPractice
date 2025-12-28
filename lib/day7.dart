import 'package:flutter/material.dart';

class Day07 extends StatefulWidget {
  const Day07({super.key});

  @override
  State<Day07> createState() => _Day07State();
}

class _Day07State extends State<Day07> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Day 07",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/day07.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  // width: 1300,
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get in Touch",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Have any Questions? We'd live to hear from you! ",
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(child: customTextField("Name")),
                          SizedBox(width: 12),
                          Expanded(child: customTextField("Email")),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(child: customTextField("phone number")),
                          SizedBox(width: 12),
                          Expanded(child: customTextField("Subject")),
                        ],
                      ),
                      SizedBox(height: 20),
                      customTextField("Message", line: 4, fullWidth: true),
                      SizedBox(height: 20),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 48,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Send Message",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Right Side
            const SizedBox(width: 54),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(height: 400),
                  infoTile(Icons.call, "+1 (123) 456-7890"),
                  SizedBox(height: 15),
                  infoTile(Icons.email, "info@example.com"),
                  SizedBox(height: 15),
                  infoTile(Icons.location_on, "123 Business St, City, Country"),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/day08'),
        label: Text("Day 08"),
        icon: Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  Widget customTextField(
    String displayHintText, {
    int line = 1,
    bool fullWidth = false,
  }) {
    return TextField(
      maxLines: line,
      decoration: InputDecoration(
        hintText: displayHintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  Widget infoTile(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 25),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 120, 118, 118),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
