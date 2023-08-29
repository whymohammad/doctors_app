import 'package:abc_doctorz/utils/my_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/my_reports_model.dart';

class ReportTab extends StatefulWidget {
  const ReportTab({super.key});

  @override
  State<ReportTab> createState() => _ReportTabState();
}

class _ReportTabState extends State<ReportTab> {
  final reportList = MyReportsModel.myReport;
  bool selectTab = false;
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: selectTab == true ? MySize.size30 : MySize.size80,
          ),
          selectTab == true
              ? Container(
                  margin: EdgeInsets.symmetric(horizontal: MySize.size22),
                  child: Column(
                    children: [
                      // SizedBox(
                      //   height: MySize.size100,
                      // ),
                      ListView.builder(
                          itemCount: reportList.length,
                          scrollDirection: Axis.vertical,
                          padding: const EdgeInsets.all(0),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, i) {
                            return Container(
                              padding: EdgeInsets.only(
                                  top: MySize.size16,
                                  left: MySize.size10,
                                  right: MySize.size10),
                              height: MySize.scaleFactorHeight * 205,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        spreadRadius: 0,
                                        color: Colors.black.withOpacity(0.2))
                                  ]),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    reportList[i].img,
                                    scale: 2,
                                  ),
                                  SizedBox(
                                    width: MySize.size10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: MySize.size6,
                                      ),
                                      Text(
                                        reportList[i].title,
                                        style: GoogleFonts.lato(
                                          fontSize: MySize.size15,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff012A78),
                                        ),
                                      ),
                                      SizedBox(
                                        height: MySize.size2,
                                      ),
                                      Text(
                                        reportList[i].subTitle,
                                        style: GoogleFonts.lato(
                                          fontSize: MySize.size15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        height: MySize.size16,
                                      ),
                                      patientReportmethod(i, "assets/time.png",
                                          reportList[i].text1),
                                      SizedBox(
                                        height: MySize.size8,
                                      ),
                                      patientReportmethod(i, "assets/time.png",
                                          reportList[i].text2),
                                      SizedBox(
                                        height: MySize.size8,
                                      ),
                                      patientReportmethod(i, "assets/time.png",
                                          reportList[i].text3),
                                      SizedBox(
                                        height: MySize.size12,
                                      ),
                                      Row(
                                        children: [
                                          patientlistmethod(
                                            Icons.share,
                                            "Share Report",
                                          ),
                                          SizedBox(
                                            width: MySize.size10,
                                          ),
                                          patientlistmethod(
                                            Icons.visibility,
                                            "View Report",
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ],
                  ),
                )
              : Container(
                  margin: EdgeInsets.symmetric(horizontal: MySize.size15),
                  height: MySize.scaleFactorHeight * 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xffF2F2F2), shape: BoxShape.circle),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: -MySize.size20,
                          left: 0,
                          right: 0,
                          child: Align(
                              child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectTab = true;
                              });
                              // Get.to(PatientReportList());
                            },
                            child: Image.asset(
                              "assets/tabler_edit.png",
                              scale: 1.7,
                            ),
                          ))),
                      Positioned(
                          top: MySize.scaleFactorHeight * 120,
                          left: 0,
                          right: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Keep Your Medical Records Save!",
                                style: GoogleFonts.lato(
                                    color: const Color(0xff012A78),
                                    fontSize: MySize.size16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: MySize.size10,
                              ),
                              Text(
                                "Start Managing Your Medical Health records",
                                style: GoogleFonts.lato(
                                    color: const Color(0xff2E4444),
                                    fontSize: MySize.size14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: MySize.size36,
                              ),
                              uploadShare(
                                "Upload and Save Records",
                              ),
                              uploadShare(
                                "Share Records With Doctors",
                              )
                            ],
                          )),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Align(
                          child: GestureDetector(
                            onTap: () {
                              //   Get.to(AppoinmentConfirmation());
                            },
                            child: Container(
                              height: MySize.scaleFactorHeight * 50,
                              width: MySize.scaleFactorWidth * 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.add,
                                    color: Color(0xff012A78),
                                  ),
                                  SizedBox(
                                    width: MySize.size2,
                                  ),
                                  Text(
                                    "Add Reports",
                                    style: GoogleFonts.lato(
                                        color: const Color(0xff012A78),
                                        fontSize: MySize.size16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
          SizedBox(
            height: MySize.size50,
          ),
          selectTab == true
              ? const SizedBox()
              : SizedBox(
                  width: MySize.scaleFactorWidth * 260,
                  child: Text(
                    "All Your Added Records/Marham Doctors prescriptions will appear here",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        color: const Color(0xff2E4444),
                        fontSize: MySize.size14,
                        fontWeight: FontWeight.w500),
                  ),
                )
        ],
      ),
      bottomNavigationBar: selectTab
          ? Padding(
              padding: EdgeInsets.only(bottom: MySize.size30),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: MySize.size22),
                height: MySize.scaleFactorHeight * 55,
                width: MySize.scaleFactorWidth * 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 0,
                          color: Colors.black.withOpacity(0.2))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: MySize.size28,
                      color: const Color(0xff012A78),
                    ),
                    SizedBox(
                      width: MySize.size10,
                    ),
                    Text(
                      "Add Reports",
                      style: GoogleFonts.lato(
                        fontSize: MySize.size15,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff012A78),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
    );
  }

  Widget uploadShare(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.check,
          color: const Color(0xff00BB9D),
          size: MySize.size20,
        ),
        SizedBox(
          width: MySize.size10,
        ),
        Text(
          text,
          style: GoogleFonts.lato(
              color: const Color(0xff2E4444),
              fontSize: MySize.size14,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Container patientlistmethod(
    IconData icon,
    String text,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MySize.size7),
      height: MySize.size36,
      width: MySize.size110,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 10,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.2))
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            size: MySize.size20,
            color: const Color(0xff012A78),
          ),
          Text(
            text,
            style: GoogleFonts.lato(
              fontSize: MySize.size12,
              fontWeight: FontWeight.w400,
              color: const Color(0xff012A78),
            ),
          ),
        ],
      ),
    );
  }

  Row patientReportmethod(int i, String img, String text) {
    return Row(
      children: [
        Image.asset(img, scale: 4.5),
        SizedBox(
          width: MySize.size10,
        ),
        Text(
          text,
          style: GoogleFonts.lato(
            fontSize: MySize.size14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
