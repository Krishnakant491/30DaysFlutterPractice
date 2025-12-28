import 'package:flutter/material.dart';

class Day08 extends StatefulWidget {
  const Day08({super.key});

  @override
  State<Day08> createState() => _Day08State();
}

class _Day08State extends State<Day08> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Day 08",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/day08.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 350.0,
              right: 350.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: Column(
              children: [
                Text(
                  "What Our Client Says",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "Read the review from our happy customers:",
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 135, 134, 134),
                  ),
                ),
                SizedBox(height: 25),

                Row(
                  children: [
                    Expanded(
                      child: customReviewCard(
                        "assets/images/day08ProfilePic.png",
                        "sarah john",
                        "Marketing Manager",
                        "This service is fantastic! It has boosted our productivity and the support team is very responsive and ",
                      ),
                    ),
                    SizedBox(width: 20),

                    Expanded(
                      child: customReviewCard(
                        "assets/images/day08ProfilePic.png",
                        "Mark Thompson",
                        "CEO",
                        "We've seen a significiant increase in efficiency since we started using this platform.\nHighly recommended ",
                      ),
                    ),
                    SizedBox(width: 20),

                    Expanded(
                      child: customReviewCard(
                        "assets/images/day08ProfilePic.png",
                        "Lisa Miller",
                        "Small Business Owner",
                        "Absolutely love it! It's intuitive, easy to use, and has greatly improves the workflow for my team",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: customReviewCard(
                        "assets/images/day08ProfilePic.png",
                        "James Wilson",
                        "Freelancer",
                        "I can't imagine going back to the old way of doing things. This has streamlined my process and saved me so. ",
                      ),
                    ),
                    SizedBox(width: 20),

                    Expanded(
                      child: customReviewCard(
                        "assets/images/day08ProfilePic.png",
                        "Emily Davis",
                        "Product Designer",
                        "Amazing experience! The features are user-friendly and the customer service is exceptional. ",
                      ),
                    ),
                    SizedBox(width: 20),

                    Expanded(
                      child: customReviewCard(
                        "assets/images/day08ProfilePic.png",
                        "David Martinez",
                        "Startup Founder",
                        "A top-notch service with outstanding support. It's been a game-changer for our startup.\nHighly recommended ",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/day09'),
        label: Text("Day 09"),
        icon: Icon(Icons.navigate_next_outlined),
      ),
    );
  }

  Widget customReviewCard(
    String profilePic,
    String name,
    String designation,
    String review,
  ) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(profilePic),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    Text(
                      designation,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "“",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 36, 156, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 80,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    review,
                    style: TextStyle(fontSize: 15, height: 1.4),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) =>
                    const Icon(Icons.star, color: Colors.yellow, size: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
