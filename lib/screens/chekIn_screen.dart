// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lets_check/components/circle_tile.dart';
import 'package:lets_check/components/bottom_nav.dart';
import 'package:quickalert/quickalert.dart';

class CheckIn extends StatelessWidget {
  final String subject;

  const CheckIn({super.key, required this.subject});

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
                          const Text(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Time attendant',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavigationExample()),
                              );
                            },
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                              child: Column(
                                children: [
                                  Text(
                                    "Subject: $subject",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(height: 30),
                                  // Display the card's text using a font size of 15 and a light grey color
                                  StreamBuilder(
                                      stream: Stream.periodic(
                                          const Duration(seconds: 1)),
                                      builder: (context, snapshort) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              DateFormat('hh:mm:ss')
                                                  .format(DateTime.now()),
                                              style: TextStyle(
                                                  fontSize: 50,
                                                  color: Colors.blueGrey,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        );
                                      }),
                                  Container(height: 40),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        style: ButtonStyle(
                                            padding: MaterialStateProperty.all<
                                                EdgeInsets>(EdgeInsets.all(15)),
                                            foregroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    Colors.white),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.blueAccent),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(18.0),
                                                    side: BorderSide(color: Colors.blueAccent)))),
                                        child: const Text(
                                          "Take attendance",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        onPressed: () {
                                          QuickAlert.show(
                                              context: context,
                                              type: QuickAlertType.success,
                                              text:
                                                  'check In Completed Successfully!',
                                              onConfirmBtnTap: () async {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            NavigationExample()));
                                              });
                                        },
                                      ),
                                    ],
                                  ),
                                  Container(height: 40),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StreamBuilder(
                              stream:
                                  Stream.periodic(const Duration(seconds: 1)),
                              builder: (context, snapshort) {
                                return Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16)),
                                  padding: const EdgeInsets.all(16),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [Text(subject)],
                                      ),
                                      Row(
                                        children: [
                                          Text(DateFormat('hh:mm:ss')
                                              .format(DateTime.now())),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              })
                        ],
                      ),*/
                    ],
                  ),
                ),
              ),
            ))
          ],
        )));
  }
}
