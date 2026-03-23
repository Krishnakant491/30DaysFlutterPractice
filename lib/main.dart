import 'package:flutter/material.dart';
import 'package:krishnakant_ui/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: '/day01',
      // initialRoute: '/day02',
      // initialRoute: '/day03',
      // initialRoute: '/day05',
      // initialRoute: '/day06',
      // initialRoute: '/day07',
      // initialRoute: '/day08',
      // initialRoute: '/day09',
      // initialRoute: '/day10',
      // initialRoute: '/day11',
      // initialRoute: '/day12',
      // initialRoute: '/day13',
      // initialRoute: '/day14',
      initialRoute: '/day15',
      // initialRoute: '/day16',
      // initialRoute: '/day17',
      // initialRoute: '/day18',
      // initialRoute: '/day19',
      // initialRoute: '/day20',
      // initialRoute: '/day21',
      // initialRoute: '/day22',
      onGenerateRoute: RouteGenerator.generateRoute,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
