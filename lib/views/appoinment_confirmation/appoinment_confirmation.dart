import 'package:abc_doctorz/utils/my_size.dart';
import 'package:abc_doctorz/views/widgets/custom_txtfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppoinmentConfirmation extends StatefulWidget {
  const AppoinmentConfirmation({super.key});

  @override
  State<AppoinmentConfirmation> createState() => _AppoinmentConfirmationState();
}

class _AppoinmentConfirmationState extends State<AppoinmentConfirmation> {
  List<String> paymentMethod = ["Pay At Clinin", "Debit/Credit Card"];
  int isTap = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Appoinment Confirmation",
          style: GoogleFonts.lato(
              fontSize: MySize.size20,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
        backgroundColor: const Color(0xff012A78),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: MySize.size26),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size30,
              ),
              Text(
                "Appoinment For",
                style: GoogleFonts.lato(
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MySize.size48,
                    width: MySize.scaleFactorWidth * 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          "MySelf",
                          style: GoogleFonts.lato(
                              fontSize: MySize.size16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Or",
                    style: GoogleFonts.lato(
                        fontSize: MySize.size18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Container(
                    height: MySize.size48,
                    width: MySize.scaleFactorWidth * 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Center(
                      child: Text(
                        "Someone Else",
                        style: GoogleFonts.lato(
                            fontSize: MySize.size16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MySize.size40,
              ),
              textfieldHeader("Rectangle 7", "Patient Name"),
              SizedBox(
                height: MySize.size14,
              ),
              CustomTextField(
                hintText: "Enter Your Name here",
              ),
              SizedBox(
                height: MySize.size25,
              ),
              textfieldHeader("Rectangle 9", "Phone Number"),
              SizedBox(
                height: MySize.size14,
              ),
              CustomTextField(
                hintText: "Enter Your number here",
              ),
              SizedBox(
                height: MySize.size25,
              ),
              textfieldHeader("Group 15", "Amount"),
              SizedBox(
                height: MySize.size25,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: MySize.size22),
                height: MySize.size48,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff012A78),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Rs. 10000",
                      style: GoogleFonts.lato(
                          fontSize: MySize.size16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Container(
                      height: MySize.size10,
                      width: MySize.size10,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MySize.size30,
              ),
              Text(
                "Select Payment Method",
                style: GoogleFonts.lato(
                    fontSize: MySize.size18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Column(
                children: List.generate(
                    paymentMethod.length,
                    (index) => Padding(
                          padding: EdgeInsets.symmetric(vertical: MySize.size6),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isTap = index;
                                  });
                                },
                                child: Container(
                                  height: MySize.size32,
                                  width: MySize.size32,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 1,
                                        color: const Color(0xff012A78)),
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: isTap == index
                                            ? const Color(0xff012A78)
                                            : Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MySize.size10,
                              ),
                              Text(
                                paymentMethod[index],
                                style: GoogleFonts.lato(
                                    fontSize: MySize.size18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        )),
              ),
              SizedBox(
                height: MySize.size20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MySize.size50,
                    width: MySize.scaleFactorWidth * 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 3),
                              blurRadius: 10,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.1))
                        ]),
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.lato(
                            fontSize: MySize.size18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: MySize.size50,
                      width: MySize.scaleFactorWidth * 130,
                      decoration: BoxDecoration(
                        color: Color(0xff012A78),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: GoogleFonts.lato(
                              fontSize: MySize.size18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MySize.size12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textfieldHeader(String img, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/$img.png",
          scale: 3.4,
        ),
        SizedBox(
          width: MySize.size12,
        ),
        Text(
          text,
          style: GoogleFonts.lato(
              fontSize: MySize.size16,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ],
    );
  }
}
