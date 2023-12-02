import 'package:flutter/material.dart';
import 'package:lets_check/screens/chekIn_screen.dart';

class ClassTile extends StatelessWidget {
  final color;
  final String subjectName;
  final String room;
  final String dayName;
  final String timeIn;
  final String timeOut;

  const ClassTile(
      {super.key,
      required this.color,
      required this.subjectName,
      required this.room,
      required this.dayName,
      required this.timeIn,
      required this.timeOut});

  String formatClassTime(String dayname, String timeIn, String timeOut) {
    return "$dayname, $timeIn - $timeOut";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding: EdgeInsets.all(16),
                      color: color,
                      child: const Icon(
                        Icons.star,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subjectName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(room,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey)),
                    Text(formatClassTime(dayName, timeIn, timeOut),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey))
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CheckIn(subject: subjectName)),
                );
              },
              icon: const Icon(Icons.more_horiz),
            )
          ],
        ),
      ),
    );
  }
}
