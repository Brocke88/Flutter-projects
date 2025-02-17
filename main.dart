import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:vector_math/vector_math.dart';
import 'package:graphs/graphs.dart';
import 'package:decimal/decimal.dart';
import 'package:rational/rational.dart';
import 'package:process_run/process_run.dart';
import 'outputScreen.dart';

void main() {
  runApp(
      MaterialApp(
        home: homeScreen(),
        debugShowCheckedModeBanner: false,
    )
  );
}

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          outPutScreen(),
          SizedBox(
            height: 12,
          ),
          topSection(),
          SizedBox(
            height: 12,
          ),
        ]
    );
  }
}

class topSection extends StatefulWidget {
  const topSection({super.key});

  @override
  State<topSection> createState() => _topSectionState();
}

class _topSectionState extends State<topSection> {
  bool? isPoweredOn = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alignment along the main axis (horizontal)
        crossAxisAlignment: CrossAxisAlignment.center, // Alignment along the cross axis (vertical)
        mainAxisSize: MainAxisSize.max, // How much space the row occupies
        children: <Widget>[
          TextButton(
            onPressed: () async {
                await run('50');
},
            child: Text('SHIFT',style: TextStyle(
              color: Color(0xdba225),
              fontFamily: 'Monsterrat',
              fontSize: 10.0,
              ),
            ),

            style: TextButton.styleFrom( // Styling for the button
              backgroundColor: Color(0xb8b7b4),
               // Text color
            ),
          ),
          SizedBox(width : 10),
          TextButton(
            onPressed: () async {
              await run('123');
            },
            child: Text('ALPHA',style: TextStyle(
              color: Color(0xdba225),
              fontFamily: 'Monsterrat',
              fontSize: 10.0,
              ),
            ),
            style: TextButton.styleFrom( // Styling for the button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10.0,
                )
              ),
              backgroundColor: Color(0xb8b7b4),
              // Text color
            ),
          ),
          SizedBox(width : 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Alignment along the main axis (horizontal)
            crossAxisAlignment: CrossAxisAlignment.center, // Alignment along the cross axis (vertical)
            mainAxisSize: MainAxisSize.max, // How much space the row occupies
            children: <Widget>[
              TextButton(
                onPressed: () async{
                  await run('21');
                },
                child: Text('◀'),
                style: TextButton.styleFrom( // Styling for the button
                  backgroundColor: Color(0xb8b7b4),
                  // Text color
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: TextButton(
                  onPressed: () async {
                    await run('19');
                  },
                  child: Text('▲'),
                  style: TextButton.styleFrom( // Styling for the button
                    backgroundColor: Color(0xb8b7b4),
                    // Text color
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () async {
                    await run('20');
                  },
                  child: Text('▼'),
                  style: TextButton.styleFrom( // Styling for the button
                    backgroundColor: Color(0xb8b7b4),
                    // Text color
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  await run('22');
                },
                child: Text('►'),
                style: TextButton.styleFrom( // Styling for the button
                  backgroundColor: Color(0xb8b7b4),
                  // Text color
                ),
              ),
            ],
          ),
          SizedBox(width: 40,),
          TextButton(
            onPressed: () async{
              await run('456');
            },
            child: Text('Mode Setup',style: TextStyle(
              color: Color(0xdba225),
              fontFamily: 'Monsterrat',
              fontSize: 10.0,
              ),
            ),
            style: TextButton.styleFrom( // Styling for the button
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  )
              ),
              backgroundColor: Color(0xb8b7b4),
              // Text color
            ),
          ),
          SizedBox(width: 10,),
          TextButton(
            onPressed: isPoweredOn!?() async {
              await run('./Medium Phone API 35 2 (emulator-5554)');
            }:()async {
              await run('kill');
              },
            child: Text('on',style: TextStyle(
              color: Color(0xdba225),
              fontFamily: 'Monsterrat',
              fontSize: 10.0,
            ),
            ),
            style: TextButton.styleFrom( // Styling for the button
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  )
              ),
              backgroundColor: Color(0xb8b7b4),
              // Text color
            ),
          ),
        ],
      ),
    );
  }
}