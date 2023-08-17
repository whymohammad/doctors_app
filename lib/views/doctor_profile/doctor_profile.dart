// ignore_for_file: unused_field, unused_element, prefer_final_fields

import 'dart:io';
import 'dart:math';

import 'package:abc_doctorz/models/profile_model.dart';
import 'package:abc_doctorz/utils/app_const.dart';
import 'package:abc_doctorz/utils/my_size.dart';
import 'package:abc_doctorz/views/doctor_profile/doc_profile_location_amount.dart';
import 'package:abc_doctorz/views/doctor_profile/profile_specialization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_linear_progress.dart';

class DoctorProfileScreen extends StatefulWidget {
  const DoctorProfileScreen({super.key});

  @override
  State<DoctorProfileScreen> createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen> {
  double _secondsliderValue = 10;
  double _thirdtsliderValue = 30;
  double _firstsliderValue = 60;

  void _firsthandlerSelection(double value) {
    setState(() {
      _firstsliderValue = value;
    });
  }

  void _thirdhandleSliderChange(double value) {
    setState(() {
      _secondsliderValue = value;
    });
  }

  void _secondhandleSliderChange(double value) {
    setState(() {
      _thirdtsliderValue = value;
    });
  }

  final profilemodel = ProfileModel.profilemodel;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            height: MySize.scaleFactorHeight * 250,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xff012A78)),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: MySize.scaleFactorHeight * 50,
                  left: MySize.size24,
                  right: MySize.size24,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Text('Doctor’s Profile',
                          style: GoogleFonts.lato(
                              fontSize: MySize.size24,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: MySize.size10,
                        width: MySize.size10,
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: -MySize.size50,
                  child: Container(
                    height: MySize.scaleFactorHeight * 120,
                    width: MySize.scaleFactorHeight * 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 6, color: const Color(0xffA57CF0)),
                        image: const DecorationImage(
                            image: AssetImage("assets/jon.jpg"))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MySize.size56,
          ),
          Text('Dr. Awais Arif',
              style: GoogleFonts.lato(
                  fontSize: MySize.size20,
                  color: const Color(0xff012A78),
                  fontWeight: FontWeight.w600)),
          SizedBox(
            height: MySize.size4,
          ),
          Text('Dermatologist Specialist',
              style: GoogleFonts.lato(
                  fontSize: MySize.size18,
                  color: const Color(0xff5C5C5C),
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: MySize.size40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: MySize.size20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MySize.scaleFactorHeight * 140,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('About',
                              style: GoogleFonts.lato(
                                  fontSize: MySize.size20,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: MySize.size12,
                          ),
                          SizedBox(
                            width: MySize.scaleFactorWidth * 180,
                            child: Text(AppConst.text1,
                                style: GoogleFonts.lato(
                                    fontSize: MySize.size14,
                                    color: const Color(0xff5C5C5C),
                                    fontWeight: FontWeight.w400)),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          profile_loc_amount(
                              "assets/location.png", "Shalamar Hospital"),
                          Expanded(child: Container()),
                          profile_loc_amount(
                              "assets/Group 96.png", "9:00am-5:00pm"),
                          Expanded(child: Container()),
                          profile_loc_amount("assets/Path 693.png", "25 USD")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MySize.size40,
                ),
                Text('Patient Reviews',
                    style: GoogleFonts.lato(
                        fontSize: MySize.size20,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: MySize.size30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Doctors Checkup',
                              style: GoogleFonts.lato(
                                  fontSize: MySize.size14,
                                  color: const Color(0xff122A3B),
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: MySize.size15,
                          ),
                          Text('Clinic Environment',
                              style: GoogleFonts.lato(
                                  fontSize: MySize.size14,
                                  color: const Color(0xff122A3B),
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: MySize.size15,
                          ),
                          Text('Staff Behavior',
                              style: GoogleFonts.lato(
                                  fontSize: MySize.size14,
                                  color: const Color(0xff122A3B),
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: MySize.scaleFactorHeight * 14,
                                width: MySize.scaleFactorWidth * 170,
                                child: MySlider(
                                  value: _firstsliderValue,
                                  min: 1,
                                  max: 100,
                                  onChanged: _firsthandlerSelection,
                                ),
                              ),
                              SizedBox(
                                width: MySize.size8,
                              ),
                              Text("${_firstsliderValue.toInt()} %",
                                  style: GoogleFonts.lato(
                                      fontSize: MySize.size12,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w600))
                            ],
                          ),
                          SizedBox(
                            height: MySize.size15,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: MySize.scaleFactorHeight * 14,
                                width: MySize.scaleFactorWidth * 170,
                                child: MySlider(
                                  value: _secondsliderValue,
                                  min: 1,
                                  max: 100,
                                  onChanged: _secondhandleSliderChange,
                                ),
                              ),
                              SizedBox(
                                width: MySize.size8,
                              ),
                              Text("${_secondsliderValue.toInt()} %",
                                  style: GoogleFonts.lato(
                                      fontSize: MySize.size12,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w600))
                            ],
                          ),
                          SizedBox(
                            height: MySize.size15,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: MySize.scaleFactorHeight * 14,
                                width: MySize.scaleFactorWidth * 170,
                                child: MySlider(
                                  value: _thirdtsliderValue,
                                  min: 1,
                                  max: 100,
                                  onChanged: _thirdhandleSliderChange,
                                ),
                              ),
                              SizedBox(
                                width: MySize.size8,
                              ),
                              Text("${_thirdtsliderValue.toInt()} %",
                                  style: GoogleFonts.lato(
                                      fontSize: MySize.size12,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w600))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MySize.size30,
                ),
                ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: MySize.size20,
                      );
                    },
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    clipBehavior: Clip.none,
                    itemCount: profilemodel.length,
                    itemBuilder: (context, i) {
                      return Container(
                        padding: EdgeInsets.only(
                            left: MySize.size12,
                            right: MySize.size12,
                            top: MySize.size10),
                        height: MySize.size80,
                        width: double.infinity,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(profilemodel[i].name,
                                    style: GoogleFonts.lato(
                                        fontSize: MySize.size16,
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w600)),
                                Text(profilemodel[i].date,
                                    style: GoogleFonts.lato(
                                        fontSize: MySize.size14,
                                        color: const Color(0xffA7A7A7),
                                        fontWeight: FontWeight.w500)),
                                RatingBar.builder(
                                  initialRating: 5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: MySize.size18,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 0.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: MySize.size10,
                                  ),
                                  onRatingUpdate: (double value) {},
                                )
                              ],
                            ),
                            SizedBox(
                              height: MySize.size14,
                            ),
                            Text(profilemodel[i].text,
                                style: GoogleFonts.lato(
                                    fontSize: MySize.size14,
                                    color: const Color(0xff5C5C5C),
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      );
                    }),
                SizedBox(
                  height: MySize.size20,
                ),
                Container(
                  width: MySize.scaleFactorWidth * 150,
                  height: MySize.size40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xff5C5C5C),
                      )),
                  child: Center(
                    child: Text("Read All Reviews",
                        style: GoogleFonts.lato(
                            fontSize: MySize.size16,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                Row(
                  children: [
                    Text("Eductaion",
                        style: GoogleFonts.lato(
                            fontSize: MySize.size20,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      width: MySize.size10,
                    ),
                    Container(
                      width: MySize.scaleFactorWidth * 110,
                      height: MySize.size30,
                      decoration: BoxDecoration(
                        color: const Color(0xffB3EEF1),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text("PMC Verified",
                            style: GoogleFonts.lato(
                                fontSize: MySize.size14,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MySize.size10,
                ),
                Row(
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
                    Text("M.B.B.S-Punjab Medical College,2018",
                        style: GoogleFonts.lato(
                            fontSize: MySize.size14,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  height: MySize.size14,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(
                      width: MySize.scaleFactorWidth * 270,
                      child: Text(
                          "F.C.P.s(Nephrology)-College of Physicians & Dermotologists.2018",
                          style: GoogleFonts.lato(
                              fontSize: MySize.size14,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                SizedBox(
                  height: MySize.size20,
                ),
                Text('Specialization',
                    style: GoogleFonts.lato(
                        fontSize: MySize.size20,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: MySize.size15,
                ),
                profileSpecialization("Nephrologists"),
                SizedBox(
                  height: MySize.size8,
                ),
                profileSpecialization("Surgeon"),
                SizedBox(
                  height: MySize.size8,
                ),
                profileSpecialization("Dermotologists"),
                SizedBox(
                  height: MySize.size20,
                ),
                Text('Expercience',
                    style: GoogleFonts.lato(
                        fontSize: MySize.size20,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: MySize.size15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(
                      width: MySize.scaleFactorWidth * 270,
                      child: Text(
                          "Dr. Awais Arif have 10 years of expercience in this field",
                          style: GoogleFonts.lato(
                              fontSize: MySize.size14,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                SizedBox(
                  height: MySize.size20,
                ),
              ],
            ),
          ),
        ])));
  }
}
