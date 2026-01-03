import 'package:flutter/material.dart';
import 'package:krishnakant_ui/daysCard/day12card/dashboard_card.dart';
import 'package:krishnakant_ui/daysCard/day12card/messages_card.dart';
import 'package:krishnakant_ui/daysCard/day12card/recent_order_card.dart';
import 'package:krishnakant_ui/daysCard/day12card/revenue_growth_chart.dart';
import 'package:krishnakant_ui/daysCard/day12card/sidebar.dart';
import 'package:krishnakant_ui/daysCard/day12card/tasks_card.dart';
import 'package:krishnakant_ui/daysCard/day12card/user_distribution_card.dart';

class Day12 extends StatelessWidget {
  const Day12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Day 12",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/day12backdrop.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            // SIDEBAR
            const Sidebar(),

            /// MAIN CONTENT
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// TOP CARDS
                    Row(
                      children: const [
                        DashboardCard(
                          title: "Total Revenue",
                          value: "\$24,500",
                          percent: 12.5,
                          color: Colors.green,
                        ),
                        SizedBox(width: 16),
                        DashboardCard(
                          title: "Active Users",
                          value: "1,200",
                          percent: 25.6,
                          color: Colors.green,
                        ),
                        SizedBox(width: 16),
                        DashboardCard(
                          title: "New Signups",
                          value: "250",
                          percent: -33.3,
                          color: Colors.red,
                        ),
                        SizedBox(width: 16),
                        DashboardCard(
                          title: "Pending Tasks",
                          value: "8",
                          percent: null,
                          color: Colors.blue,
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    /// CONTENT ROW
                    Expanded(
                      child: Row(
                        children: [
                          /// LEFT
                          Expanded(
                            flex: 1,
                            child: SingleChildScrollView(
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 260,
                                    child: RevenueGrowthCard(),
                                  ),
                                  SizedBox(height: 16),
                                  SizedBox(
                                    height: 240,
                                    child: UserDistributionCard(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),

                          /// RIGHT
                          Expanded(
                            flex: 1,
                            child: SingleChildScrollView(
                              child: Column(
                                children: const [
                                  RecentOrdersCard(),
                                  SizedBox(height: 16),
                                  Row(
                                    children: [
                                      Expanded(child: TasksCard()),
                                      SizedBox(width: 16),
                                      Expanded(child: MessagesCard()),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day13');
        },
        label: Text("Day 13"),
        icon: Icon(Icons.skip_next_outlined),
      ),
    );
  }
}
