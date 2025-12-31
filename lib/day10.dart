import 'package:flutter/material.dart';
import 'package:krishnakant_ui/day10queriesItem.dart';

class Day10 extends StatefulWidget {
  const Day10({super.key});

  @override
  State<Day10> createState() => _Day10State();
}

class _Day10State extends State<Day10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Day 10",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/day08.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            QueriesItem(
              question: "How do I sign up for an account?",
              answers: [
                "Click on the Sign Up button, enter your details, and verify your email.",
              ],
            ),
            QueriesItem(
              question: "What payment methods do you accept?",
              answers: ["Visa", "MasterCard", "American Express", "PayPal."],
            ),
            QueriesItem(
              question: "Can I upgrade my plan Later?",
              answers: [
                "Yes, you can upgrade your plan anytime from the dashboard. Simply go to the biling section and select the plan you'd like to upgrade to."
                    "Yes, you can upgrade your plan anytime from the dashboard. Simply go to the biling section and select the plan you'd like to upgrade to.",
              ],
            ),
            QueriesItem(
              question: "Is my data secure?",
              answers: ["Yes, all data is encrypted and stored securely."],
            ),
            QueriesItem(
              question: "How can I cancel my subscription?",
              answers: [
                "Go to \"Billing\" section",
                "Click \"Cancel Subscription\" ",
                "follow the on-screen instructions.",
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, '/day11'),
        label: Text("Day 11"),
        icon: Icon(Icons.navigate_next_outlined),
      ),
    );
  }
}
