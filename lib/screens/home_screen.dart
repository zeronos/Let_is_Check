// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lets_check/components/circle_tile.dart';
import 'package:lets_check/components/class_tile.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:lets_check/models/subjects_model.dart';
import 'package:lets_check/utils/subject_preference.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final sub1 = SubjectPreferences.sub1;
  final sub2 = SubjectPreferences.sub2;
  final sub3 = SubjectPreferences.sub3;
  final sub4 = SubjectPreferences.sub4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 26, 105, 241),
        body: SafeArea(
            child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Janny!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat('dd MMMM yyyy').format(DateTime.now()),
                            style: TextStyle(
                                color: Color.fromARGB(255, 197, 197, 247)),
                          ),
                        ],
                      ),
                    ),
                    CircleTile(imagePath: 'lib/images/person.png')
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              child: Container(
                padding: EdgeInsets.all(35),
                color: const Color.fromARGB(255, 240, 240, 240),
                child: Center(
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Class schedule',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            ClassTile(
                              color: sub1.color,
                              subjectName: sub1.subjectName,
                              room: sub1.room,
                              dayName: sub1.dayname,
                              timeIn: sub1.timeIn,
                              timeOut: sub1.timeOut,
                            ),
                            ClassTile(
                              color: sub2.color,
                              subjectName: sub2.subjectName,
                              room: sub2.room,
                              dayName: sub2.dayname,
                              timeIn: sub2.timeIn,
                              timeOut: sub2.timeOut,
                            ),
                            ClassTile(
                              color: sub3.color,
                              subjectName: sub3.subjectName,
                              room: sub3.room,
                              dayName: sub3.dayname,
                              timeIn: sub3.timeIn,
                              timeOut: sub3.timeOut,
                            ),
                            ClassTile(
                              color: sub4.color,
                              subjectName: sub4.subjectName,
                              room: sub4.room,
                              dayName: sub4.dayname,
                              timeIn: sub4.timeIn,
                              timeOut: sub4.timeOut,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        )));
  }
}
