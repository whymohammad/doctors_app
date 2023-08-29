import 'package:abc_doctorz/views/makeAppoinment/make_appoinment.dart';
import 'package:abc_doctorz/views/patient_mdeical_record/doctors_prescriptionIlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/my_size.dart';

class PrescriptionTab extends StatefulWidget {
  const PrescriptionTab({super.key});

  @override
  State<PrescriptionTab> createState() => _PrescriptionTabState();
}

class _PrescriptionTabState extends State<PrescriptionTab> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MySize.size80,
          ),
          Container(
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
                        Get.to(DoctorsPresCriptionList());
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
          SizedBox(
            width: MySize.scaleFactorWidth * 260,
            child: Text(
              "All Your Added Records/Marham Doctors prescriptions will appear here",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  color: const Color(0xff2E4444),
                  fontSize: MySize.size14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
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
