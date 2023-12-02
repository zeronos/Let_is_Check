import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lets_check/models/subjects_model.dart';

class SubjectPreferences {
  static Subjects sub1 = Subjects(
    color: Colors.orange,
    subjectName: "M1481 / 437H",
    room: "Room B4-402 / No.3",
    dayname: 'THU',
    timeIn: DateFormat.Hm().format(DateTime.parse('1969-07-20 08:40:00Z')),
    timeOut: DateFormat.Hm().format(DateTime.parse('1969-07-20 11:40:00Z')),
  );
  static Subjects sub2 = Subjects(
    color: Colors.lightBlue,
    subjectName: "M1470 / 436A",
    room: "Room B4-305 / No.4",
    dayname: 'FRI',
    timeIn: DateFormat.Hm().format(DateTime.parse('1969-07-20 08:40:00Z')),
    timeOut: DateFormat.Hm().format(DateTime.parse('1969-07-20 11:00:00Z')),
  );
  static Subjects sub3 = Subjects(
    color: Colors.lightBlue,
    subjectName: "BD411 / 411C",
    room: "Room C2-506 / No.24",
    dayname: 'FRI',
    timeIn: DateFormat.Hm().format(DateTime.parse('1969-07-20 12:00:00Z')),
    timeOut: DateFormat.Hm().format(DateTime.parse('1969-07-20 14:20:00Z')),
  );
  static Subjects sub4 = Subjects(
    color: Colors.purple,
    subjectName: "M1495 / 437A",
    room: "Room B4-306 / No.14",
    dayname: 'SAT',
    timeIn: DateFormat.Hm().format(DateTime.parse('1969-07-20 14:30:00Z')),
    timeOut: DateFormat.Hm().format(DateTime.parse('1969-07-20 16:50:00Z')),
  );
}
