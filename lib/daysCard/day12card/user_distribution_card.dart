// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class UserDistributionCard extends StatelessWidget {
//   const UserDistributionCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 220,
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//         boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           /// TITLE
//           const Text(
//             "User Distribution",
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),

//           const SizedBox(height: 16),

//           Row(
//             children: [
//               /// DONUT
//               Expanded(
//                 child: PieChart(
//                   PieChartData(
//                     sectionsSpace: 2,
//                     centerSpaceRadius: 45,
//                     sections: _sections(),
//                   ),
//                 ),
//               ),

//               /// LEGEND
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   _Legend(color: Color(0xFF8EA6FF), text: "Free"),
//                   SizedBox(height: 8),
//                   _Legend(color: Color(0xFF5E7BFF), text: "Pro"),
//                   SizedBox(height: 8),
//                   _Legend(color: Color(0xFF8DD3E6), text: "Enterprise"),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   List<PieChartSectionData> _sections() {
//     return [
//       PieChartSectionData(
//         value: 50,
//         title: "50.0%",
//         radius: 55,
//         color: const Color(0xFF8EA6FF),
//         titleStyle: const TextStyle(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//       ),
//       PieChartSectionData(
//         value: 30,
//         title: "30%",
//         radius: 55,
//         color: const Color(0xFF5E7BFF),
//         titleStyle: const TextStyle(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//       ),
//       PieChartSectionData(
//         value: 20,
//         title: "20.0%",
//         radius: 55,
//         color: const Color(0xFF8DD3E6),
//         titleStyle: const TextStyle(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//       ),
//     ];
//   }
// }

// /// LEGEND ITEM
// class _Legend extends StatelessWidget {
//   final Color color;
//   final String text;

//   const _Legend({required this.color, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           width: 10,
//           height: 10,
//           decoration: BoxDecoration(
//             color: color,
//             borderRadius: BorderRadius.circular(3),
//           ),
//         ),
//         const SizedBox(width: 6),
//         Text(text, style: const TextStyle(fontSize: 12)),
//       ],
//     );
//   }
// }

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class UserDistributionCard extends StatelessWidget {
  const UserDistributionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "User Distribution",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 16),

          ///  HARD SIZE LOCK
          SizedBox(
            height: 160,
            width: double.infinity,
            child: Row(
              children: [
                const SizedBox(width: 120),

                /// PIE CHART (FIXED BOX)
                SizedBox(
                  height: 160,
                  width: 160,
                  child: PieChart(
                    PieChartData(
                      sectionsSpace: 2,
                      centerSpaceRadius: 45,
                      sections: _sections(),
                    ),
                  ),
                ),

                const SizedBox(width: 100),

                /// LEGEND
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    _Legend(color: Color(0xFF8EA6FF), text: "Free"),
                    SizedBox(height: 8),
                    _Legend(color: Color(0xFF5E7BFF), text: "Pro"),
                    SizedBox(height: 8),
                    _Legend(color: Color(0xFF8DD3E6), text: "Enterprise"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _sections() {
    return [
      PieChartSectionData(
        value: 50,
        title: "50%",
        radius: 55,
        color: Color(0xFF8EA6FF),
      ),
      PieChartSectionData(
        value: 30,
        title: "30%",
        radius: 55,
        color: Color(0xFF5E7BFF),
      ),
      PieChartSectionData(
        value: 20,
        title: "20%",
        radius: 55,
        color: Color(0xFF8DD3E6),
      ),
    ];
  }
}

class _Legend extends StatelessWidget {
  final Color color;
  final String text;

  const _Legend({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
