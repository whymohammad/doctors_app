import 'package:abc_doctorz/models/my_reports_model.dart';
import 'package:abc_doctorz/utils/my_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientReportList extends StatefulWidget {
  const PatientReportList({super.key});

  @override
  State<PatientReportList> createState() => _PatientReportListState();
}

class _PatientReportListState extends State<PatientReportList> {
  final reportList = MyReportsModel.myReport;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: MySize.size22),
        child: Column(
          children: [
            SizedBox(
              height: MySize.size100,
            ),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            patientReportmethod(
                                i, "assets/time.png", reportList[i].text1),
                            SizedBox(
                              height: MySize.size8,
                            ),
                            patientReportmethod(
                                i, "assets/time.png", reportList[i].text2),
                            SizedBox(
                              height: MySize.size8,
                            ),
                            patientReportmethod(
                                i, "assets/time.png", reportList[i].text3),
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
                })
          ],
        ),
      ),
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
