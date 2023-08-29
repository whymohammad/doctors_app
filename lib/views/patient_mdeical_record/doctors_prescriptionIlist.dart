import 'package:abc_doctorz/models/doctors_prescription_model.dart';
import 'package:abc_doctorz/utils/my_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorsPresCriptionList extends StatefulWidget {
  const DoctorsPresCriptionList({super.key});

  @override
  State<DoctorsPresCriptionList> createState() =>
      _DoctorsPresCriptionListState();
}

class _DoctorsPresCriptionListState extends State<DoctorsPresCriptionList> {
  final doctorPrescription = DoctorPrescripTionModel.doctorprescription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: MySize.size22),
        child: Column(
          children: [
            SizedBox(
              height: MySize.size100,
            ),
            ListView.builder(
                padding: const EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: doctorPrescription.length,
                itemBuilder: (context, i) {
                  return Container(
                    height: MySize.scaleFactorHeight * 300,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: MySize.size16,
                        left: MySize.size20,
                        right: MySize.size10),
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
                          doctorPrescription[i].img,
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
                              doctorPrescription[i].title,
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
                              doctorPrescription[i].subTitle,
                              style: GoogleFonts.lato(
                                fontSize: MySize.size15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: MySize.size15,
                            ),
                            patientReportmethod(i, "assets/time.png",
                                doctorPrescription[i].text1),
                            SizedBox(
                              height: MySize.size8,
                            ),
                            patientReportmethod(i, "assets/time.png",
                                doctorPrescription[i].text2),
                            SizedBox(
                              height: MySize.size15,
                            ),
                            Text(
                              doctorPrescription[i].text3,
                              style: GoogleFonts.lato(
                                fontSize: MySize.size15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: MySize.size10,
                            ),
                            SizedBox(
                              width: MySize.scaleFactorWidth * 260,
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: doctorPrescription[i].richText1,
                                    style: GoogleFonts.lato(
                                      fontSize: MySize.size14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    )),
                                TextSpan(
                                    text: doctorPrescription[i].richText2,
                                    style: GoogleFonts.lato(
                                      fontSize: MySize.size14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ))
                              ])),
                            ),
                            SizedBox(
                              height: MySize.size10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: MySize.size30,
                                  width: MySize.size120,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: MySize.size7),
                                  height: MySize.size40,
                                  width: MySize.scaleFactorWidth * 136,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                            color:
                                                Colors.black.withOpacity(0.2))
                                      ],
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.visibility,
                                        size: MySize.size20,
                                        color: const Color(0xff012A78),
                                      ),
                                      Text(
                                        "View Prescription",
                                        style: GoogleFonts.lato(
                                          fontSize: MySize.size12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff012A78),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
