import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Day13 extends StatefulWidget {
  const Day13({super.key});

  @override
  State<Day13> createState() => _Day13State();
}

class _Day13State extends State<Day13> {
  DateTime? _dueDate;
  TextEditingController dueDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text("Create New Project"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(5),
              ),
            ),
            child: Text("Save Draft"),
          ),
          SizedBox(width: 10),

          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(5),
              ),
            ),
            child: Text(
              "Create Project",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/day08.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 30, left: 60, right: 60),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text("data"),
                    Text(
                      "Project Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Project Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),

                    Text(
                      "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      maxLength: 200,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: "Describe your project...",
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.camera),
                      ),
                    ),
                    SizedBox(height: 10),

                    Text(
                      "Project Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: dueDateController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Due date"),
                        suffixIcon: Icon(Icons.date_range),
                      ),
                      onTap: () {
                        pickDueDate();
                      },
                    ),
                    SizedBox(height: 10),

                    Text(
                      "Priority",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff8BB5FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Low",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 18),

                        // Medium
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffDADADA)),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Medium",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(width: 18),

                        // High
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffF28B82),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "High",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Text(
                      "Attachments",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        height: 100,
                        width: 900,

                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        alignment: Alignment.center,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.upload_file),
                            Text("Drap and drop files here or Browse File"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30),
              Flexible(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          children: [
                            // Assigned Members
                            const Text(
                              "Assigned Members",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 12),

                            Row(
                              children: [
                                // Icon(Icons.person),
                                Icon(Icons.person_2),
                                Icon(Icons.person_2_outlined),
                                Icon(Icons.person_4),
                                Icon(Icons.person_4_outlined),
                                Icon(Icons.person_3),
                                Icon(Icons.person_3_outlined),

                                // +5 more
                                Container(
                                  width: 36,
                                  height: 36,
                                  margin: const EdgeInsets.only(left: 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffE8EDFF),
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "+5",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff4A6CF7),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 20),

                            // Project Status
                            const Text(
                              "Project Status",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: "In Progress",
                                  isExpanded: true,
                                  items: const [
                                    DropdownMenuItem(
                                      value: "In Progress",
                                      child: Text("In Progress"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Completed",
                                      child: Text("Completed"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Pending",
                                      child: Text("Pending"),
                                    ),
                                  ],
                                  onChanged: (value) {},
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),

                      SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            // Title Row
                            Row(
                              children: [
                                Icon(
                                  Icons.notifications_none_rounded,
                                  color: Color(0xffF4B400),
                                  size: 22,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Deadline Reminder",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 10),

                            // Description
                            Text(
                              "Reminder set for one day before the due date. "
                              "Adjust your notification settings to change this behavior.",
                              style: TextStyle(
                                fontSize: 12,
                                height: 1.5,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title Row
                            Row(
                              children: [
                                Icon(
                                  Icons.lightbulb,
                                  color: Colors.blue,
                                  size: 22,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Need Help?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 10),

                            /// Description
                            Text(
                              "Here You can create a new project. Fill out the details. "
                              "on the left and set the project status on the right.",
                              style: TextStyle(
                                fontSize: 12,
                                height: 1.5,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: double.infinity,
                              height: 40,
                              // padding: const EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Support Center",
                                style: TextStyle(fontSize: 15),
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
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/day14');
        },
        label: Text("Day 14"),
        icon: Icon(Icons.skip_next_outlined),
      ),
    );
  }

  Future<void> pickDueDate() async {
    final initialDate = DateTime.now(); // aaj ki date se
    final newDate = await showDatePicker(
      context: context,
      initialDate: _dueDate ?? initialDate,
      //initialDate -> date picker open hoga aaj ki date se....._dateOfBirth -> selected date se open hogi
      firstDate: DateTime(
        initialDate.year - 100,
      ), //minimum date = 100 years pehle
      lastDate: DateTime(initialDate.year + 1), //Maximum date = next year
      builder: (context, child) => Theme(
        //Date picker ka look/theme customize karne ke liye
        data: ThemeData().copyWith(
          //Default theme ko modify
          colorScheme: const ColorScheme.light(
            primary: Colors.pink, // Header color
            onPrimary: Colors.white, // Header text
            onSurface: Colors.black, // Body text
          ),
          dialogTheme: DialogThemeData(backgroundColor: Colors.white),
        ),
        child: child ?? const Text('HELLO'),
      ),
    );
    //User ne Cancel dabaya.....Cancel = null......Function yahin ruk jata hai
    if (newDate == null) {
      return;
    }

    setState(() {
      _dueDate = newDate;
      String dob = DateFormat('dd/MM/yyyy').format(newDate);
      dueDateController.text = dob;
    });
  }
}
