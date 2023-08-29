
// ignore_for_file: non_constant_identifier_names

  import 'package:abc_doctorz/utils/my_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container profile_loc_amount(String img,String text) {
    return Container(
                        padding: EdgeInsets.only(left: MySize.size6),
                        height: MySize.scaleFactorHeight * 40,
                        width: MySize.scaleFactorHeight * 140,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Row(
                          children: [
                            Image.asset(
                             img,
                              scale: 3,
                            ),
                            SizedBox(
                              width: MySize.size10,
                            ),
                            Text(text,
                                style: GoogleFonts.lato(
                                    fontSize: MySize.size12,
                                    color: const Color(0xff5C5C5C),
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      );
  }