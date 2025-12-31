import 'package:flutter/material.dart';

class QueriesItem extends StatefulWidget {
  final String question;
  final List<String> answers;
  const QueriesItem({super.key, required this.question, required this.answers});

  @override
  State<QueriesItem> createState() => _QueriesItemState();
}

class _QueriesItemState extends State<QueriesItem> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isOpen = !isOpen;
      }),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.help_outline, color: Colors.blue),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    widget.question,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                AnimatedRotation(
                  turns: isOpen ? 0.5 : 0,
                  duration: Duration(milliseconds: 300),
                  child: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
            if (isOpen) ...[
              SizedBox(height: 12),
              for (var answer in widget.answers)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 3),
                      Icon(Icons.circle, size: 15),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          answer,
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ],
        ),
      ),
    );
  }
}
