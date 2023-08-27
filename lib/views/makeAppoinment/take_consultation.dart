import 'package:abc_doctorz/utils/my_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget takeConsultation(Color color, String img, String text) {
  return Container(
    height: MySize.size50,
    width: MySize.scaleFactorWidth * 156,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/$img.png",
          scale: 3,
        ),
        Text(
          text,
          style: GoogleFonts.lato(
              fontSize: MySize.size14,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
      ],
    ),
  );
}
