import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:advance_math/advance_math.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'middleSection.dart';
import 'outputScreen.dart';

var Sin,Cos,Tan,Cosec,Sec,cotan,Asin,Acos,ATan,ACosec,ASec,Sinh,Cosh,Tanh,COTH,Cosech,SECH,ASinh,ACosh,ATanh,Acsch,
    sqrd,cubed,Asech,ACotanh,Pi,degreeMeasure,sqrrt,cuberoot,ratPow,recip,exp,Pow,commLog,NatLog;
// Define return types explicitly (dynamic is a good choice for math functions)
void SIN(dynamic angleInRad) {
  Sin = sin(angleInRad);
}

void COS(dynamic angleInRad) {
  Cos = cos(angleInRad);
}

void TAN(dynamic angleInRad) {
  Tan = tan(angleInRad);
}

void SEC(dynamic angleInRad) {
  Sec = 1 / cos(angleInRad);
}

void COSEC(dynamic angleInRad) {
  Cosec = 1 / sin(angleInRad);
}

void COTAN(dynamic angleInRad) {
  cotan = 1 / tan(angleInRad);
}

void TANH(dynamic angleInRad) {
    Tanh = Sinh/Cosh;
}

 void SINH(dynamic angleInRad) {
   Sinh = sinh(angleInRad);
}

void COSH(dynamic angleInRad) {
  Cosh = cosh(angleInRad);
}

void cotanh(dynamic angleInRad) {
  COTH = cosh(angleInRad) / sinh(angleInRad);
}

void csch(dynamic angleInRad) {
  Cosech =  1 / sinh(angleInRad);
}

void sech(dynamic angleInRad) {
  SECH = 1 / cosh(angleInRad);
}

void arcSinh(dynamic angleInRad) {
  ASinh = ASinh(angleInRad);
}

void arcCosh(dynamic angleInRad) {
  ACosh = ACosh(angleInRad);
}

void arcTanh(dynamic angleInRad) {
  ATanh = ATanh(angleInRad);
}

void acsch(dynamic x) {
   Acsch = log((1 / x) + sqrt((1 / x) * (1 / x) + 1));
}

void asech(dynamic x) {
  Asech = log((1 + sqrt(1 - x * x)) / x);
}

void Acoth(dynamic x) {
  ACotanh = log((1 + x) / (1 - x)) / 2;
}


void main() {

  acsch(2);
  print(Acsch); // Output: approximately 0.881

  asech(0.5);
  print(Asech); // Output: approximately 0.693

  atanh(0.5);
  print(ATanh); // Output: approximately 0.549

}


void pi(){
  Pi = AngleConstants.pi;
}

dynamic degree(dynamic radians){
  return (180/AngleConstants.pi)*radians;
}

dynamic arcTan(dynamic angleInRad) {
  return atan(angleInRad);
}


void Mplus(){
  dynamic crntVal = controller_1.text as dynamic;
  stackValues += crntVal;
}

void Mminus(){
  dynamic crntVal = controller_1.text as dynamic;
  stackValues -= crntVal;
}

void MC(){
  stackValues = 0;
}

void MS(){
  dynamic crntVal = controller_1.text as dynamic;
  stackValues = crntVal;
}

void MR(){
   controller_1.text = stackValues.toString();
}

void squared(dynamic input) {
  sqrd = input * input;
}

void squareroot(dynamic input){
  sqrrt = sqrt(input);
}

void cbcroot(dynamic input){
  dynamic yieldedPower = 1,basenumber = 1;
  while(yieldedPower < input) {
    yieldedPower = cubed(basenumber);
    if (yieldedPower >= input) {
      cuberoot = basenumber.todynamic();
      return;
    }
    basenumber++;
  }
}
void cubedd(dynamic input) {
  cubed = input * input * input;
}

void reciprocal(dynamic input) {
   recip = 1 / input;
}

void exponential(dynamic In) {
  exp = exp(In); // Use exp() for e^x
}

void power(dynamic base, dynamic power) {
  Pow = pow(base, power);
}

void commonLog(dynamic input) {
  commLog = log10(input);
}

void naturalLog(dynamic In) {
  NatLog = log(In); // Use log() for natural logarithm
}

// Corrected Calc function
Widget Calc(int n, dynamic firstarg, dynamic secondarg, dynamic thirdarg,
    dynamic fourtharg, dynamic fiftharg) {
  TextEditingController controller_1 = TextEditingController(),
      controller_2 = TextEditingController(),
      controller_4 = TextEditingController(),
      controller_3 = TextEditingController(),
      controller_5 = TextEditingController();

  List<dynamic> operands = [
    firstarg,
    secondarg,
    thirdarg,
    fourtharg,
    fiftharg
  ]; // Correct type
  List<String> texts = ['A : ', 'B : ', 'C : ', 'D : ', 'E : '];
  List<TextEditingController> controllers = [
    controller_1,
    controller_2,
    controller_3,
    controller_4,
    controller_5
  ];

  Widget output = ListView.builder( // Correct type for output
      itemCount: n, // Use n to control the number of items
      itemBuilder: (context, int index) {
        return Column(
          children: [
            Row(
              children: [
                Text(texts[index]), // Use texts[index]
                const SizedBox(
                  width: 12,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: '',
                    hintText: 'Enter Argument number ${index + 1}:', // Correct index
                  ),
                  controller: controllers[index],
                  keyboardType: TextInputType.number, // Allow only numbers
                  onChanged: (text) {
                    try {
                      operands[index] = dynamic.parse(text); // Parse input
                    } catch (e) {
                      // Handle parsing errors (e.g., invalid input)
                      print("Invalid input: $e");
                    }
                  },
                )
              ],
            ),
            const SizedBox(
              height: 4,
            )
          ],
        );
      });
  return output;
}