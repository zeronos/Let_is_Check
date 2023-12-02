// ignore_for_file: prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:lets_check/utils/user_preferences.dart';
import 'package:lets_check/components/profile_circle_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 105, 241),
      body: SafeArea(
          child: Column(
        children: [
          Column(
            children: const [
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My profile',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 39,
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
                    ProfileCircleTile(imagePath: 'lib/images/person.png'),
                    buildUserInfoDisplay(user.name, "Name"),
                    buildUserInfoDisplay(user.university, "University"),
                    buildUserInfoDisplay(user.faculty, "Faculty"),
                    buildUserInfoDisplay(user.major, "Major")
                  ],
                ),
              ),
            ),
          ))
        ],
      )),
    );
  }
}

Widget buildUserInfoDisplay(String getValue, String title) => Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.grey,
              width: 1,
            ))),
            child: Row(children: [
              Expanded(
                  child: Text(
                getValue,
                style: TextStyle(fontSize: 16, height: 1.4),
              )),
            ]))
      ],
    ));
