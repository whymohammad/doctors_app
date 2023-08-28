import 'package:abc_doctorz/models/appoinment_date_model.dart';
import 'package:abc_doctorz/models/appoinment_morning_time.dart';
import 'package:abc_doctorz/utils/my_size.dart';
import 'package:abc_doctorz/views/appoinment_confirmation/appoinment_confirmation.dart';
import 'package:abc_doctorz/views/filterResult/filter_result.dart';
import 'package:abc_doctorz/views/makeAppoinment/take_consultation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'doctor_profile_card.dart';

class MakeAppoinment extends StatefulWidget {
  const MakeAppoinment({super.key});

  @override
  State<MakeAppoinment> createState() => _MakeAppoinmentState();
}

class _MakeAppoinmentState extends State<MakeAppoinment> {
  final appoinmentDate = AppoinmentDate.appoinmentDate;
  final appoinmentMorning = AppoinmentMorningTime.appoinmenttime;
  final appoinmentEveningTime = AppoinmentMorningTime.appoinmeneveningttime;

  int dateIndex = -1;
  int timeIndex = -1;
  int eveningIndex = -1;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: MySize.size28,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Dr Awais Arif",
          style: GoogleFonts.lato(
              fontSize: MySize.size20,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
        backgroundColor: const Color(0xff012A78),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: MySize.size20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size40,
              ),
              doctorpeofileCard(),
              SizedBox(
                height: MySize.size30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  takeConsultation(const Color(0xffFF3D3D), "Group 75",
                      "Video Consultation"),
                  takeConsultation(
                      const Color(0xff012A78), "Group 68", "Book Appoinment"),
                ],
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Text(
                "August 2023",
                style: GoogleFonts.lato(
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    appoinmentDate.length,
                    (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              dateIndex = index;
                            });
                          },
                          child: Container(
                            height: MySize.scaleFactorHeight * 70,
                            width: MySize.size54,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.07),
                                      offset: const Offset(0, 4),
                                      blurRadius: 7,
                                      spreadRadius: 0)
                                ],
                                color: dateIndex == index
                                    ? const Color(0xffFF3D3D)
                                    : Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  appoinmentDate[index].weekDay,
                                  style: GoogleFonts.lato(
                                      fontSize: MySize.size18,
                                      fontWeight: FontWeight.w700,
                                      color: dateIndex == index
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                Text(
                                  appoinmentDate[index].no,
                                  style: GoogleFonts.lato(
                                      fontSize: MySize.size18,
                                      fontWeight: FontWeight.w700,
                                      color: dateIndex == index
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ],
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Text(
                "Morning",
                style: GoogleFonts.lato(
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  runAlignment: WrapAlignment.center,
                  alignment: WrapAlignment.center,
                  runSpacing: MySize.size10,
                  spacing: MySize.size10,
                  children: List.generate(
                    appoinmentMorning.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          timeIndex = index;
                        });
                      },
                      child: Container(
                        height: MySize.size50,
                        width: MySize.scaleFactorWidth * 105,
                        decoration: BoxDecoration(
                          color: timeIndex == index
                              ? const Color(0xffFF3D3D)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.07),
                                offset: const Offset(0, 4),
                                blurRadius: 7,
                                spreadRadius: 0)
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/Path 495.png",
                              color: timeIndex == index
                                  ? Colors.white
                                  : const Color(0xff200E32),
                              scale: 3,
                            ),
                            Text(
                              appoinmentMorning[index].text,
                              style: GoogleFonts.lato(
                                  fontSize: MySize.size15,
                                  fontWeight: FontWeight.w600,
                                  color: timeIndex == index
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Text(
                "Evening",
                style: GoogleFonts.lato(
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  runAlignment: WrapAlignment.center,
                  alignment: WrapAlignment.center,
                  runSpacing: MySize.size10,
                  spacing: MySize.size10,
                  children: List.generate(
                    appoinmentEveningTime.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          eveningIndex = index;
                        });
                      },
                      child: Container(
                        height: MySize.size50,
                        width: MySize.scaleFactorWidth * 105,
                        decoration: BoxDecoration(
                          color: eveningIndex == index
                              ? const Color(0xffFF3D3D)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.07),
                                offset: const Offset(0, 4),
                                blurRadius: 7,
                                spreadRadius: 0)
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/Path 495.png",
                              color: eveningIndex == index
                                  ? Colors.white
                                  : const Color(0xff200E32),
                              scale: 3,
                            ),
                            Text(
                              appoinmentEveningTime[index].text,
                              style: GoogleFonts.lato(
                                  fontSize: MySize.size15,
                                  fontWeight: FontWeight.w600,
                                  color: eveningIndex == index
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const AppoinmentConfirmation());
                },
                child: Container(
                  height: MySize.scaleFactorHeight * 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff012A78),
                  ),
                  child: Center(
                    child: Text(
                      "Make Appoinment",
                      style: GoogleFonts.lato(
                          fontSize: MySize.size18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
