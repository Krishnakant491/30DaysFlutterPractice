import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RevenueGrowthCard extends StatelessWidget {
  const RevenueGrowthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TITLE + LEGEND
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Revenue Growth",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: const [
                  _Legend(color: Color(0xFFCBD5FF), text: "Previous"),
                  SizedBox(width: 12),
                  _Legend(color: Color(0xFF6C8CFF), text: "Current"),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// CHART
          Expanded(
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 50,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(color: Colors.grey.shade200, strokeWidth: 1);
                  },
                ),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 50,
                      getTitlesWidget: (value, _) => Text(
                        value.toInt().toString(),
                        style: const TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, _) {
                        const months = [
                          "Sep",
                          "Aug",
                          "Jun",
                          "May",
                          "Apr",
                          "Mar",
                          "Feb",
                          "Jan",
                        ];
                        return Text(
                          months[value.toInt()],
                          style: const TextStyle(fontSize: 10),
                        );
                      },
                    ),
                  ),
                ),
                minX: 0,
                maxX: 7,
                minY: 50,
                maxY: 300,

                /// LINES
                lineBarsData: [_previousLine(), _currentLine()],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// PREVIOUS LINE
  LineChartBarData _previousLine() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 100),
        FlSpot(1, 140),
        FlSpot(2, 130),
        FlSpot(3, 170),
        FlSpot(4, 150),
        FlSpot(5, 180),
        FlSpot(6, 260),
        FlSpot(7, 220),
      ],
      isCurved: true,
      color: const Color(0xFFCBD5FF),
      barWidth: 3,
      dotData: const FlDotData(show: false),
      belowBarData: BarAreaData(
        show: true,
        color: const Color(0xFFCBD5FF).withOpacity(0.15),
      ),
    );
  }

  /// CURRENT LINE
  LineChartBarData _currentLine() {
    return LineChartBarData(
      spots: const [
        FlSpot(0, 80),
        FlSpot(1, 120),
        FlSpot(2, 140),
        FlSpot(3, 150),
        FlSpot(4, 120),
        FlSpot(5, 160),
        FlSpot(6, 220),
        FlSpot(7, 250),
      ],
      isCurved: true,
      color: const Color(0xFF6C8CFF),
      barWidth: 3,
      dotData: const FlDotData(show: false),
    );
  }
}

/// LEGEND WIDGET
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
