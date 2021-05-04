import 'package:flutter/material.dart';
import 'package:travel_planner_app/gen/fonts.gen.dart';

final kBoxDecorationStyle = BoxDecoration(
  color: const Color(0x00f0f0f0),
  borderRadius: BorderRadius.circular(5.0),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade200,
      offset: const Offset(0, 2),
    ),
  ],
);

final Color primaryColor = Colors.deepPurpleAccent;
const Color secondaryColor = Color(0xffF2861E);

class FontStyle {
  const FontStyle();

  static const TextStyle regular =
      TextStyle(fontFamily: FontFamily.proximaNova);
  static const TextStyle bold = TextStyle(
      fontFamily: FontFamily.proximaNova, fontWeight: FontWeight.bold);
}
