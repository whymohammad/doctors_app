import 'package:abc_doctorz/models/appoinment_model.dart';
import 'package:abc_doctorz/utils/my_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppoinmentTab extends StatefulWidget {
  const AppoinmentTab({super.key});

  @override
  State<AppoinmentTab> createState() => _AppoinmentTabState();
}

class _AppoinmentTabState extends State<AppoinmentTab> {
  final appoimet = AppoinmentModel.appoiment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MySize.screenHeight,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: MySize.size22, vertical: MySize.size22),
      decoration: BoxDecoration(
          color: const Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(18)),
      child: SingleChildScrollView(
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                height: MySize.size20,
              );
            },
            itemCount: appoimet.length,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: MySize.size10),
                height: MySize.scaleFactorHeight * 130,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      height: MySize.size80,
                      width: MySize.size80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(appoimet[i].img))),
                    ),
                    SizedBox(
                      width: MySize.size14,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: MySize.size28,
                                  width: MySize.size56,
                                  color: const Color(0xff012A78),
                                  child: Center(
                                    child: Text(
                                      "ID# ${appoimet[i].idNo}",
                                      style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: MySize.size14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: MySize.size6,
                                ),
                                Text(
                                  "Dr.Asifa Iqbal",
                                  style: GoogleFonts.lato(
                                      color: const Color(0xff012A78),
                                      fontSize: MySize.size17,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MySize.size17,
                            ),
                            Container(
                              height: MySize.size30,
                              width: MySize.size110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: appoimet[i].containerColor),
                              child: Center(
                                child: Text(
                                  appoimet[i].status,
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: MySize.size15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MySize.size7,
                        ),
                        Text(
                          "Dentist",
                          style: GoogleFonts.lato(
                              color: const Color(0xff00BB9D),
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: MySize.size7,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/Group 221.png",
                              scale: 3,
                            ),
                            SizedBox(
                              width: MySize.size2,
                            ),
                            Text(
                              appoimet[i].time,
                              style: GoogleFonts.lato(
                                  color: const Color(0xff2E4444),
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: MySize.size4,
                            ),
                            Container(
                              height: MySize.size18,
                              width: 1,
                              color: const Color(0xff2E4444),
                            ),
                            SizedBox(
                              width: MySize.size4,
                            ),
                            Text(
                              appoimet[i].date,
                              style: GoogleFonts.lato(
                                  color: const Color(0xff2E4444),
                                  fontSize: MySize.size14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    ));
  }
}
