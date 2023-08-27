 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/my_size.dart';

Container doctorpeofileCard() {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: MySize.size10),
            height: MySize.scaleFactorHeight * 130,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  offset: const Offset(0, 4),
                  blurRadius: 7,
                  spreadRadius: 0)
            ], borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Row(
              children: [
                Container(
                  height: MySize.scaleFactorHeight * 80,
                  width: MySize.scaleFactorWidth * 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/Group 239.png"))),
                ),
                SizedBox(
                  width: MySize.size12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MySize.size20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Dr Awais Arif",
                          style: GoogleFonts.lato(
                              fontSize: MySize.size20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: MySize.size6,
                        ),
                        Container(
                          height: MySize.size24,
                          width: MySize.size24,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff03C665)),
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: MySize.size17,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MySize.size4,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Doctors Hospitals(Johar Town)",
                        style: GoogleFonts.lato(
                            fontSize: MySize.size12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: " Change Clinic",
                        style: GoogleFonts.lato(
                            fontSize: MySize.size12,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            color: Colors.grey),
                      )
                    ])),
                    SizedBox(
                      height: MySize.size5,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/Group 88.png",
                          scale: 3,
                        ),
                        SizedBox(
                          width: MySize.size5,
                        ),
                        Text(
                          "Mon Sat 8:00 AM to 9:30 PM",
                          style: GoogleFonts.lato(
                              fontSize: MySize.size15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MySize.size5,
                    ),
                    Text(
                      "fee: 5000",
                      style: GoogleFonts.lato(
                          fontSize: MySize.size15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          );
  }