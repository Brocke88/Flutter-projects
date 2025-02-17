import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:vector_math/vector_math.dart';
import 'package:graphs/graphs.dart';
import 'package:decimal/decimal.dart';
import 'package:rational/rational.dart';
import 'package:process_run/process_run.dart';

class outPutScreen extends StatefulWidget {
  const outPutScreen({super.key});

  @override
  State<outPutScreen> createState() => outPutScreenState();
}

TextEditingController controller_1 = TextEditingController();
class outPutScreenState extends State<outPutScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        maxLines: 3,
        controller: controller_1,
      ),
      width: 9*double.infinity/10,
      height : 3*double.infinity/10,
      decoration: BoxDecoration(
        color: Color(0x5c5b59),
        border: Border.all(
          width: 5.5,
          color:Color(0x000000), 
        ),
        borderRadius: BorderRadius.circular(9.0),
      ),
    );
  }
}
