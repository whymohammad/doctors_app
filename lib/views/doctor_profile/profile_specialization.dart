
  import 'package:abc_doctorz/utils/my_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Row profileSpecialization(String text) {
    return Row(
                children: [
                  Container(
                    height: MySize.size12,
                    width: MySize.size12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    width: MySize.size10,
                  ),
                  Text(text,
                      style: GoogleFonts.lato(
                          fontSize: MySize.size14,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w600)),
                ],
              );
  }