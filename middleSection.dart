import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:vector_math/vector_math.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:vector_math/vector_math.dart';
import 'package:graphs/graphs.dart';
import 'package:decimal/decimal.dart';
import 'dart:math';
import 'math_functions.dart';

double stackValues = 0.0;
List<void> functionNames = [Calc,squareroot,cuberoot,sin,cos,
tan,asin,acos,atan,Sinh,Cosh,Tanh,arcSinh,arcCosh,arcTanh,
  squared,cubed,exponential,power,commonLog,
  naturalLog,reciprocal,pi,degree,
  MS,Mplus,Mminus,MR,MC];

List<String> texts = ['CALC','√(x)','3√(x)''x^(y/z)','sin','cos',
  'tan','sin⁻¹','cos⁻¹','tan⁻¹','sinh','cosh',
  'tanh','sinh⁻¹','cosh⁻¹','tanh⁻¹','x²','x^3','e^x','x^y','log',
'ln','1/x','π','°','MS','M+','M-','MR','MC'];
class midSection extends StatefulWidget {

  const midSection({super.key});

  @override
  State<midSection> createState() => _midSectionState();
}

class _midSectionState extends State<midSection> {
  Color? color;
  int? size;
  void _animateContainer() {
    setState(() {
      size = size == 100 ? 150 : 100;
      color = color == Color(0x0000FF) ? Color(0xFF0000) : Color(0x0000FF);
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6),
        primary: true,
        itemCount: 30,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: functionNames[index] as VoidCallback,
            child: Text(texts[index]),
            style: TextButton.styleFrom( // Styling for the button
              foregroundColor: Color(0x000000),
            ),
          );
        }
    );
  }
}