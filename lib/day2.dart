import 'package:flutter/material.dart';

class Day02 extends StatelessWidget {
  const Day02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 194, 194),
      appBar: AppBar(title: Text("Day02"), centerTitle: true),
      body: Center(
        child: Container(
          width: 370,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            // border: BoxBorder.all()
            // borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Future of Web Development",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    // SizedBox(width: 20),
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(
                        "https://t3.ftcdn.net/jpg/13/11/22/86/240_F_1311228699_YoiLc5aJ3RWz3uRfdEtlV0UYSQjqf7RW.jpg",
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "John Doe",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "April 24, 2024 - 5 min read",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  // height: 100,
                  // width: double.infinity,
                  child: Image.network(
                    "https://tse4.mm.bing.net/th/id/OIP.CnUGfyvcbhwf-KOYfEKaEgHaEJ?pid=Api&P=0&h=180",
                    height: 100,
                    // width: double.infinity,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "web development is evolving rapidly with new technologies and trends emerging every year. In this article, we Will ecplore some of the key trends of technologies that are shaping the future of web development",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 13),
                Text(
                  "Key Trends in Web Development",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(height: 13),
                customeList("progressive Web Apps (PWAs)"),
                customeList("Single Page Application (SPAs)"),
                customeList("Serveless Architecture"),
                SizedBox(height: 13),
                Text(
                  "The Importance of Learning Continously",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                    children: [
                      const TextSpan(
                        text:
                            'Staying updated with the latest web development trends/technologies is crucial for any developer. ',
                      ),
                      TextSpan(
                        text: 'Continuous learning ',
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      const TextSpan(
                        text:
                            'and adaptability are key to thriving in this ever changing field.',
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 15),

                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      const TextSpan(
                        text:
                            "As the web development landscape continues to evolve, developers need to be adaptable and proactive in learning new skills, By staying infromed about the other trends and technologies, you can ensure that you're skill always at the industry",
                      ),
                    ],
                  ),
                ),

                // Text(
                //   "As the web development landscape continues to evolve, developers need to be adaptable and proactive in learning new skills, By staying infromed about the other trends and technologies, you can ensure that you're skill always at the industry",
                //   style: TextStyle(color: Colors.black),
                // ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day03');
        },
        label: Text("Day 03"),
        icon: const Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  Widget customeList(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 4),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
            height: 1.3,
          ),
          children: [
            const TextSpan(
              text: '• ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: text),
          ],
        ),
      ),
    );
  }
}
