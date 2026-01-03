import 'package:flutter/material.dart';

class TasksCard extends StatefulWidget {
  const TasksCard({super.key});

  @override
  State<TasksCard> createState() => _TasksCardState();
}

class _TasksCardState extends State<TasksCard> {
  final List<_TaskItem> _tasks = [
    _TaskItem("Review quarterly report", true),
    _TaskItem("Prepare presentation", false),
    _TaskItem("Update client information", false),
    _TaskItem("Schedule team meeting", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 178,
      // height: 178,
      // width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        // spacing: -4,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Tasks",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          ..._tasks.map((task) => _taskTile(task)),
        ],
      ),
    );
  }

  Widget _taskTile(_TaskItem task) {
    return Row(
      children: [
        Checkbox(
          value: task.completed,
          activeColor: Colors.blue,
          onChanged: (val) {
            setState(() {
              task.completed = val ?? false;
            });
          },
        ),
        Expanded(
          child: Text(
            task.title,
            style: TextStyle(
              fontSize: 14,
              decoration: task.completed ? TextDecoration.lineThrough : null,
              color: task.completed ? Colors.grey : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

/// Simple task model
class _TaskItem {
  final String title;
  bool completed;

  _TaskItem(this.title, this.completed);
}
