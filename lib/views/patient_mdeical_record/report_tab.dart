import 'package:abc_doctorz/utils/my_size.dart';
import 'package:abc_doctorz/views/appoinment_confirmation/appoinment_confirmation.dart';
import 'package:abc_doctorz/views/widgets/custom_linear_progress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportTab extends StatelessWidget {
  const ReportTab({super.key});

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
                        child: Image.asset(
                      "assets/tabler_edit.png",
                      scale: 1.7,
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
                        Get.to(AppoinmentConfirmation());
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
}
