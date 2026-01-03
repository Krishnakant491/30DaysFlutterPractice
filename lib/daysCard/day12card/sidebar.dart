import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      color: Colors.transparent,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "Dashboard",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          _item(Icons.dashboard, "Dashboard", true),
          _item(Icons.analytics, "Analytics", false),
          _item(Icons.receipt, "Reports", false),
          _item(Icons.message, "Messages", false),
          _item(Icons.settings, "Settings", false),
          // const Spacer(),
          ElevatedButton(onPressed: () {}, child: const Text("Upgrade")),
        ],
      ),
    );
  }

  Widget _item(IconData icon, String title, bool selected) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xffEEF3FF) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 10),
          Text(title),
        ],
      ),
    );
  }
}
