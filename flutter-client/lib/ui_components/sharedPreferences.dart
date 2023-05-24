import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final softColor = Colors.amber[50];
final hardColor = Colors.amber[200];
final darkColor = Colors.amber[800];

TextStyle setFont({double? size, Color? color}) {
  return GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: size ?? 15,
    color: color ?? Colors.black,
  ));
}

class SoftCircularProgressIndicator extends CircularProgressIndicator {
  const SoftCircularProgressIndicator({
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: softColor,
      valueColor: AlwaysStoppedAnimation<Color>(hardColor!));
  }
}

String analysisIdToString(int id){
  switch(id){
    case 2: return 'Dynamic';
    case 3: return 'Image Recognition';
    default:
      return 'Static';
  }
}