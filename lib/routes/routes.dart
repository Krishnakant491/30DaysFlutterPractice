import 'package:flutter/material.dart';
import 'package:krishnakant_ui/day10.dart';
import 'package:krishnakant_ui/day11.dart';
import 'package:krishnakant_ui/day12.dart';
import 'package:krishnakant_ui/day13.dart';
import 'package:krishnakant_ui/day14.dart';
import 'package:krishnakant_ui/day15.dart';
import 'package:krishnakant_ui/day16.dart';
import 'package:krishnakant_ui/day2.dart';
import 'package:krishnakant_ui/day3.dart';
import 'package:krishnakant_ui/day1.dart';
import 'package:krishnakant_ui/day4.dart';
import 'package:krishnakant_ui/day5.dart';
import 'package:krishnakant_ui/day6.dart';
import 'package:krishnakant_ui/day7.dart';
import 'package:krishnakant_ui/day8.dart';
import 'package:krishnakant_ui/day9.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/day01':
        return MaterialPageRoute(builder: (_) => Day01());
      case '/day02':
        return MaterialPageRoute(builder: (_) => Day02());
      case '/day03':
        return MaterialPageRoute(builder: (_) => Day03());
      case '/day04':
        return MaterialPageRoute(builder: (_) => Day04());
      case '/day05':
        return MaterialPageRoute(builder: (_) => Day05());
      case '/day06':
        return MaterialPageRoute(builder: (_) => Day06());
      case '/day07':
        return MaterialPageRoute(builder: (_) => Day07());
      case '/day08':
        return MaterialPageRoute(builder: (_) => Day08());
      case '/day09':
        return MaterialPageRoute(builder: (_) => Day09());
      case '/day10':
        return MaterialPageRoute(builder: (_) => Day10());
      case '/day11':
        return MaterialPageRoute(builder: (_) => Day11());
      case '/day12':
        return MaterialPageRoute(builder: (_) => Day12());
      case '/day13':
        return MaterialPageRoute(builder: (_) => Day13());
      case '/day14':
        return MaterialPageRoute(builder: (_) => Day14());
      case '/day15':
        return MaterialPageRoute(builder: (_) => Day15());
      case '/day16':
        return MaterialPageRoute(builder: (_) => Day16());
      case '/day17':
        return MaterialPageRoute(builder: (_) => Day14());
      case '/day18':
        return MaterialPageRoute(builder: (_) => Day14());
      case '/day19':
        return MaterialPageRoute(builder: (_) => Day14());
      case '/day20':
        return MaterialPageRoute(builder: (_) => Day14());

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
