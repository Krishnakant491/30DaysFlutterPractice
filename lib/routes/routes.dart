import 'package:flutter/material.dart';
import '../day1.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/day01':
        return MaterialPageRoute(builder: (_) => Day01());
      // case '/day01':
      //   return MaterialPageRoute(builder: (_) => Day02());
      default:
        return notFoundRoute();
    }
  }

  static Route<dynamic> notFoundRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("No Route")),
        body: const Center(
          child: Text(
            "No Route Found",
            style: TextStyle(
              color: Colors.red,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}


// To turn off suggestions in the Google Antigravity IDE, open the settings (gear icon or Cmd + ,), 
// go to the "Tab" section in the left sidebar, find the "Suggestions" area, and toggle off "Suggestions in editor" 
// or customize specific features like Autocomplete, Supercomplete, Tab-to-Jump, and Tab-to-Import as needed. 
