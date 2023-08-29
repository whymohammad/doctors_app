import 'package:abc_doctorz/models/doctors_prescription_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/my_size.dart';

class PrescriptionTab extends StatefulWidget {
  const PrescriptionTab({super.key});

  @override
  State<PrescriptionTab> createState() => _PrescriptionTabState();
}

class _PrescriptionTabState extends State<PrescriptionTab> {
  final doctorPrescription = DoctorPrescripTionModel.doctorprescription;

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
                  padding: EdgeInsets.symmetric(horizontal: MySize.size22),
                  child: Column(
                    children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              text: doctorPrescription[i]
                                                  .richText1,
                                              style: GoogleFonts.lato(
                                                fontSize: MySize.size14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey,
                                              )),
                                          TextSpan(
                                              text: doctorPrescription[i]
                                                  .richText2,
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
                                            width:
                                                MySize.scaleFactorWidth * 136,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      blurRadius: 10,
                                                      spreadRadius: 0,
                                                      color: Colors.black
                                                          .withOpacity(0.2))
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.visibility,
                                                  size: MySize.size20,
                                                  color:
                                                      const Color(0xff012A78),
                                                ),
                                                Text(
                                                  "View Prescription",
                                                  style: GoogleFonts.lato(
                                                    fontSize: MySize.size12,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        const Color(0xff012A78),
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
                              // Get.to(DoctorsPresCriptionList());
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "No Prescription Found",
                                  style: GoogleFonts.lato(
                                      color: const Color(0xff012A78),
                                      fontSize: MySize.size16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: MySize.size10,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: MySize.scaleFactorWidth * 300,
                                  child: Text(
                                    "Start Consuming with PMC verified doctors to have your own E-Medical Record",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lato(
                                        color: const Color(0xff2E4444),
                                        fontSize: MySize.size14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MySize.size36,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: uploadShare(
                                  "PMC Verified Doctors",
                                ),
                              ),
                              uploadShare(
                                "16000 Doctors",
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
                              //    Get.to(MakeAppoinment());
                            },
                            child: Container(
                              height: MySize.scaleFactorHeight * 50,
                              width: MySize.scaleFactorWidth * 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.4),
                              ),
                              child: Center(
                                child: Text(
                                  "Consult Online",
                                  style: GoogleFonts.lato(
                                      color: const Color(0xff012A78),
                                      fontSize: MySize.size16,
                                      fontWeight: FontWeight.w600),
                                ),
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

  Row uploadShare(String text) {
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
}
