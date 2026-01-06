import 'package:flutter/material.dart';

class Day14 extends StatefulWidget {
  const Day14({super.key});

  @override
  State<Day14> createState() => _Day14State();
}

class _Day14State extends State<Day14> {
  bool email = true;
  bool sms = false;
  bool push = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              // Image.network(src)
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
              SizedBox(width: 50),
            ],
          ),
        ],
      ),
      body: Row(
        children: [
          /// LEFT SIDEBAR
          Container(
            width: 220,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Text(
                //   "Settings",
                //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                // ),
                // const SizedBox(height: 30),
                _menuItem(Icons.person, "Profile", true),
                _menuItem(Icons.account_circle, "Account", false),
                _menuItem(Icons.notifications, "Notifications", false),
                _menuItem(Icons.security, "Security", false),
                _menuItem(Icons.credit_card, "Billing", false),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout, color: Colors.red),
                  label: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),

          /// MAIN CONTENT
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _profileCard(),
                  const SizedBox(height: 20),
                  _notificationCard(),
                ],
              ),
            ),
          ),

          /// RIGHT PANEL
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                width: 280,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    _securityCard(),
                    SizedBox(height: 10),
                    _notificationCard(),
                    SizedBox(height: 10),
                    _rightPanelSecuritySetting(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day15');
        },
        label: Text("Day 15"),
        icon: Icon(Icons.skip_next_outlined),
      ),
    );
  }

  Widget _menuItem(IconData icon, String title, bool selected) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFEAF0FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: selected ? Colors.blue : Colors.grey),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: selected ? Colors.blue : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileCard() {
    return _card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Profile Settings",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Sarah Johnson",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      "https://media.licdn.com/dms/image/v2/D4E35AQGE-MGL6QcaSA/profile-framedphoto-shrink_800_800/B4EZlD3Lc3KsAo-/0/1757780162646?e=1768320000&v=beta&t=kH4ZoNCB5GVzmRyl11A1fKbrjfi-Zm-QvHzmUN1kN8c",
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Save Changes",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),

          Text(
            "Email Address",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "sarah.johnson@example.com",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Bio",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextField(
            maxLines: 2,
            decoration: InputDecoration(
              hintText:
                  "Front-end developer passionate about creating beautiful interfaces.",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(5),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Save Changes",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _notificationCard() {
    return _card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Notification Settings",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          _switchTile("Email Notifications", email, (v) {
            setState(() => email = v);
          }),
          _switchTile("SMS Notifications", sms, (v) {
            setState(() => sms = v);
          }),
          _switchTile("Push Notifications", push, (v) {
            setState(() => push = v);
          }),
        ],
      ),
    );
  }

  Widget _securityCard() {
    return _card(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 0.2,
            children: [
              Text(
                "Security Settings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              ListTile(
                title: Text("Recent Activity"),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
              SizedBox(height: 15),
              ListTile(
                title: Text("Change Password"),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _rightPanelSecuritySetting() {
    return _card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ListTile(leading: Icon(Icons.lock), title: Text("Security Setting")),
          Row(
            children: [
              Icon(Icons.lock, size: 30),
              SizedBox(width: 10),
              Text("Security Settings", style: TextStyle(fontSize: 20)),
            ],
          ),
          SizedBox(height: 10),
          Text("Last Active", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text("April 23, 2024 at 10:14 AM"),
          Divider(),

          Row(
            children: [
              Container(
                height: 30,
                width: 36,
                decoration: BoxDecoration(
                  color: const Color(0xffE8EDFF),
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/logo/chromeLogo.png"),
              ),
              SizedBox(width: 10),
              Text(
                "Chrome - San Francisco, CA",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text("             192.198.1.0"),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.donut_large, color: Colors.green, size: 30),
              SizedBox(width: 10),
              Text(
                "  Active now",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ],
          ),
          Divider(),
          Text(
            "                 Log out all sessions",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _switchTile(String title, bool value, Function(bool) onChanged) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(title),
    );
  }

  Widget _card({required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: child,
    );
  }
}
