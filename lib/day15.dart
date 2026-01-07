import 'package:flutter/material.dart';

class Day15 extends StatelessWidget {
  const Day15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      body: Row(
        children: const [
          _Sidebar(),
          Expanded(child: _MainContent()),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day16');
        },
        label: Text("Day 16"),
        icon: Icon(Icons.skip_next_outlined),
      ),
    );
  }
}

/* ================= SIDEBAR ================= */

class _Sidebar extends StatelessWidget {
  const _Sidebar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.person_3, size: 30, color: Colors.blue),
              SizedBox(width: 20),
              const Text(
                "Dashboard",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 30),
          _menuItem(Icons.dashboard, "Dashboard", true),
          _menuItem(Icons.folder, "Projects", false),
          _menuItem(Icons.group, "Team", false),
          _menuItem(Icons.analytics, "Analytics", false),
          _menuItem(Icons.settings, "Settings", false),
          const Spacer(),
          _menuItem(Icons.logout, "Logout", false, isLogout: true),
        ],
      ),
    );
  }

  Widget _menuItem(
    IconData icon,
    String title,
    bool selected, {
    bool isLogout = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xffEEF3FF) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: isLogout ? Colors.red : Colors.blue),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(color: isLogout ? Colors.red : Colors.blue),
          ),
        ],
      ),
    );
  }
}

/* ================= MAIN CONTENT ================= */

class _MainContent extends StatelessWidget {
  const _MainContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _TopBar(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _StatsRow(),
                  SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            _ProjectsTable(),
                            SizedBox(height: 12),
                            ProjectsOverviewHeader(),
                          ],
                        ),
                        // child: _ProjectsTable(),
                      ),
                      SizedBox(width: 16),
                      Expanded(flex: 1, child: _RecentActivity()),
                    ],
                  ),
                  // ProjectsOverviewHeader(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/* ================= TOP BAR ================= */

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: const Color(0xFFF1F3F6),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          const SizedBox(width: 16),

          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              "https://media.licdn.com/dms/image/v2/D4E35AQGE-MGL6QcaSA/profile-framedphoto-shrink_800_800/B4EZlD3Lc3KsAo-/0/1757780162646?e=1768320000&v=beta&t=kH4ZoNCB5GVzmRyl11A1fKbrjfi-Zm-QvHzmUN1kN8c",
            ),
          ),

          Text(
            "Sarah Johnson",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          AnimatedRotation(
            turns: 0.75,
            duration: Duration(milliseconds: 300),
            child: Icon(Icons.keyboard_arrow_down),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

/* ================= STATS ================= */

class _StatsRow extends StatelessWidget {
  const _StatsRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _StatCard(
          Icons.folder,
          Colors.blue,
          "Total Projects",
          "24",
          4.3,
          Colors.green,
        ),
        SizedBox(width: 16),

        _StatCard(
          Icons.person_4_sharp,
          Colors.green,
          "Active Users",
          "1206",
          6.8,
          Colors.green,
        ),
        SizedBox(width: 16),

        _StatCard(
          Icons.currency_rupee_outlined,
          Colors.deepPurple,
          "Revenue",
          "\$18,450",
          8.2,
          Colors.green,
        ),
        SizedBox(width: 16),

        _StatCard(
          Icons.pie_chart,
          Colors.orange,
          "Completion Rate",
          "78%",
          13.5,
          Colors.green,
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;
  final double? percent;
  final Color color;

  const _StatCard(
    this.icon,
    this.iconColor,
    this.title,
    this.value,
    this.percent,
    this.color,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: iconColor),
                SizedBox(width: 30),
                Text(title, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (percent != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: percent! < 0
                          ? Colors.red.withOpacity(0.1)
                          : Colors.green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(6),
                    ),

                    child: (percent! >= 0)
                        ? Text(
                            "+ "
                            "${percent.toString()}"
                            " % ",
                            style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            "${percent.toString()}"
                            " % ",
                            style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class _StatCard extends StatelessWidget {
//   final String title;
//   final String value;
//   final String change;

//   const _StatCard(this.title, this.value, this.change);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Card(
//         elevation: 0,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(title, style: const TextStyle(color: Colors.grey)),
//               const SizedBox(height: 8),
//               Text(
//                 value,
//                 style: const TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 6),
//               Text(change, style: const TextStyle(color: Colors.green)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/* ================= PROJECTS TABLE ================= */

class _ProjectsTable extends StatelessWidget {
  const _ProjectsTable();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        // border: BoxBorder.all(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DataTable(
        showBottomBorder: true,
        // border: TableBorder.all(),
        columns: const [
          DataColumn(label: Text("Project")),
          DataColumn(label: Text("Status")),
          DataColumn(label: Text("Owner")),
          DataColumn(label: Text("Due Date")),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text("Website Redesign")),
              DataCell(_statusCard(WorkStatus.InProgress)),
              DataCell(Text("Sarah")),
              DataCell(Text("04/30/2024")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("Mobile App Launch")),
              DataCell(_statusCard(WorkStatus.Completed)),
              DataCell(Text("Michael")),
              DataCell(Text("04/25/2024")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("Marketing Campaign")),
              DataCell(_statusCard(WorkStatus.InReview)),
              DataCell(Text("Jessica")),
              DataCell(Text("05/05/2024")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("New Feature Development")),
              DataCell(_statusCard(WorkStatus.InProgress)),
              DataCell(Text("David")),
              DataCell(Text("05/05/2024")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("Client Portal Update")),
              DataCell(_statusCard(WorkStatus.OnHold)),
              DataCell(Text("Sarah")),
              DataCell(Text("05/05/2024")),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text("Sales Dashboard")),
              DataCell(_statusCard(WorkStatus.InProgress)),
              DataCell(Text("Daniel")),
              DataCell(Text("05/05/2024")),
            ],
          ),
        ],
      ),
    );
  }

  Widget _statusCard(WorkStatus status) {
    final statusData = _statusMap[status]!;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: statusData.color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        statusData.label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: statusData.color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

/// STATUS ENUM
enum WorkStatus { InProgress, Completed, InReview, OnHold }

/// STATUS UI DATA
class _StatusUI {
  final String label;
  final Color color;

  const _StatusUI(this.label, this.color);
}

final Map<WorkStatus, _StatusUI> _statusMap = {
  WorkStatus.InProgress: _StatusUI("InProgress", Colors.orange),
  WorkStatus.Completed: _StatusUI("Completed", Colors.green),
  WorkStatus.InReview: _StatusUI("InReview", Colors.blue),
  WorkStatus.OnHold: _StatusUI("OnHold", Colors.grey),
};

/* ================= RECENT ACTIVITY ================= */

class _RecentActivity extends StatelessWidget {
  const _RecentActivity();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Recent Activity",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Michael Lee created the Mobile App Launch project"),
              subtitle: Text("2 hours ago"),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text(
                "Sarah Johnson marked the Website Redesign as progress",
              ),
              subtitle: Text("5 hours ago"),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("Alice Brown invited you to join a new team."),
              subtitle: Text("1 Day ago"),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text("David Smith completed the Marketing Campaign"),
              subtitle: Text("2 days ago"),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectsOverviewHeader extends StatelessWidget {
  const ProjectsOverviewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          const Text(
            "Projects Overview",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 16),

          // Pagination
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFFF1F3F6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.chevron_left, size: 18, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "Page 1 of 5",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.chevron_right, size: 18, color: Colors.grey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
