import 'package:flutter/material.dart';
import 'package:krishnakant_ui/day5Footer.dart';
import 'package:url_launcher/url_launcher.dart';

class Day05 extends StatefulWidget {
  const Day05({super.key});

  @override
  State<Day05> createState() => _Day05State();
}

class _Day05State extends State<Day05> {
  Future<void> openLink(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
          height: 400,
          decoration: BoxDecoration(
            color: const Color(0xFF1F2937),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Image.asset("assets/images/flutterLogo.png"),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Lorem ipsum dolor sitamet, consectetuer adipiisccing slit",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            InkWell(
                              onTap: () => openLink("https://instagram.com"),
                              child: SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(
                                  "assets/images/instaLogo.png",
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                openLink("https://telegram.com");
                              },
                              icon: Icon(
                                Icons.telegram,
                                color: const Color.fromARGB(255, 6, 87, 153),
                                size: 35,
                              ),
                            ),
                            InkWell(
                              onTap: () => openLink("https://twitter.com"),
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/images/twitterLogo.png",
                                ),
                              ),
                            ),

                            IconButton(
                              onPressed: () {
                                openLink("https://facebook.com");
                              },
                              icon: Icon(
                                Icons.facebook,
                                color: const Color.fromARGB(255, 12, 105, 182),
                                size: 35,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Company",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          // footerTextLink(),
                        ),
                        SizedBox(height: 10),
                        footerTextLink("careers"),
                        SizedBox(height: 10),
                        footerTextLink("blog"),
                        SizedBox(height: 10),
                        footerTextLink("Press"),
                        SizedBox(height: 10),
                        footerTextLink("Contact Us"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Resources",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        footerTextLink("Help center"),
                        SizedBox(height: 10),
                        footerTextLink("Guides"),
                        SizedBox(height: 10),
                        footerTextLink("FAQs"),
                        SizedBox(height: 10),
                        footerTextLink("Support"),
                        SizedBox(height: 10),
                        footerTextLink("Privacy Policy"),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subscribe",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Subscribe to our newsletter",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(height: 10),

                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF374151),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 250,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter your mail",
                                    filled: true,
                                    fillColor: const Color(0xFF374151),
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 8),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text("Subscribe"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Divider(color: Colors.white24),
              const SizedBox(height: 12),
              const Text(
                "© 2024 Your Company. All rights reserved.",
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day06');
        },
        label: Text("Day 06"),
        icon: const Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  Widget footerTextLink(String text) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => Day05Footer(displayText: text)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
