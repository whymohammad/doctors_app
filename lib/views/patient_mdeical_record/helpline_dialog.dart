// ignore_for_file: non_constant_identifier_names

import 'package:abc_doctorz/utils/my_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Future<dynamic> helpline_dialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          actionsPadding: const EdgeInsets.all(0),
          contentPadding: const EdgeInsets.all(0),
          insetPadding: EdgeInsets.symmetric(horizontal: MySize.size30),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          actions: [
            Container(
              height: MySize.scaleFactorHeight * 300,
              width: MySize.scaleFactorWidth * 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: MySize.size14, right: MySize.size14),
                        child: Container(
                          height: MySize.size36,
                          width: MySize.size36,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.4)),
                          child: Center(
                            child: Icon(
                              Icons.clear,
                              color: Colors.black,
                              size: MySize.size24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MySize.size20,
                  ),
                  Image.asset(
                    "assets/tabler_edit.png",
                    scale: 2,
                  ),
                  SizedBox(
                    height: MySize.size20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MySize.size26),
                    height: MySize.size60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff012A78),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                  color: Colors.red),
                              child: Center(
                                child: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: MySize.size28,
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 3,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff012A78),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  )),
                              child: Center(
                                  child: Text(
                                "03111-1222398",
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w600),
                              )),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MySize.size30,
                  ),
                  Text(
                    "Available 12/7 for your service",
                    style: GoogleFonts.lato(
                        color: Colors.grey,
                        fontSize: MySize.size16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        );
      }));
}
