import 'package:abc_doctorz/utils/my_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterResult extends StatefulWidget {
  const FilterResult({super.key});

  @override
  State<FilterResult> createState() => _FilterResultState();
}

class _FilterResultState extends State<FilterResult> {
  String? dropdownValue;
  List<String> items = ['Apple', 'Mango', 'Banana', 'Peach'];
  List<String> city = ['Kohat', 'Bannu', 'Laki', 'Karak'];
  List<String> range = ['Kohat', 'Bannu', 'Laki', 'Karak'];
  String? rangedropdownValue;

  String? citydropdownValue;
  List<String> appoinmentType = [
    "In Clinic/Hospital",
    "Video/Audio Consultation"
  ];
  List<String> isDiscount = ["DisCount", "Available Today"];
  List<String> isGender = ["Male", "Female"];

  int isTypeAppoinment = -1;
  int isDis = -1;
  int gen = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Filter Result",
          style: GoogleFonts.lato(
              fontSize: MySize.size20,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: MySize.size28,
              width: MySize.size28,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.clear,
                  size: MySize.size20,
                  color: const Color(0xff012A78),
                ),
              ),
            ),
          ),
          Container(
            height: MySize.size20,
            width: MySize.size20,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
          )
        ],
        backgroundColor: const Color(0xff012A78),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: MySize.size20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MySize.size30,
              ),
              Text(
                "Type Of Appoinment",
                style: GoogleFonts.lato(
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: MySize.size10,
              ),
              Column(
                children: List.generate(
                    appoinmentType.length,
                    (index) => Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: MySize.size12),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isTypeAppoinment = index;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: MySize.size26,
                                  width: MySize.size26,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1, color: Colors.black)),
                                  child: Container(
                                    margin: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: isTypeAppoinment == index
                                            ? Colors.black
                                            : Colors.transparent),
                                  ),
                                ),
                                SizedBox(
                                  width: MySize.size15,
                                ),
                                Text(
                                  appoinmentType[index],
                                  style: GoogleFonts.lato(
                                      fontSize: MySize.size18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
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
                "Specialist Doctor",
                style: GoogleFonts.lato(
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: MySize.size16,
              ),
              Container(
                width: MySize.scaleFactorWidth * 220,
                height: MySize.scaleFactorHeight * 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 1, color: Colors.black)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    padding: EdgeInsets.symmetric(horizontal: MySize.size10),
                    elevation: 0,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.black,
                    ),
                    iconSize: MySize.size36,

                    hint: const Text('Please Select'),
                    value: dropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    isExpanded: false,
                    itemHeight: 50,
                    isDense: true, // Reduce the height of the dropdown
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size30,
              ),
              Text(
                "Select Your City",
                style: GoogleFonts.lato(
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: MySize.size16,
              ),
              Container(
                width: MySize.scaleFactorWidth * 220,
                height: MySize.scaleFactorHeight * 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 1, color: Colors.black)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    padding: EdgeInsets.symmetric(horizontal: MySize.size10),
                    elevation: 0,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.black,
                    ),
                    iconSize: MySize.size36,
                    hint: const Text('Please Select'),
                    value: citydropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        citydropdownValue = newValue!;
                      });
                    },
                    items: city.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    isExpanded: false,
                    itemHeight: 50,
                    isDense: true,
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size18,
              ),
              Column(
                children: List.generate(
                    isDiscount.length,
                    (index) => Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: MySize.size12),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isDis = index;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: MySize.size26,
                                  width: MySize.size26,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1, color: Colors.black)),
                                  child: Container(
                                    margin: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: isDis == index
                                            ? Colors.black
                                            : Colors.transparent),
                                  ),
                                ),
                                SizedBox(
                                  width: MySize.size15,
                                ),
                                Text(
                                  isDiscount[index],
                                  style: GoogleFonts.lato(
                                      fontSize: MySize.size18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: MySize.size26,
              ),
              Text(
                "Select Free Range",
                style: GoogleFonts.lato(
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              SizedBox(
                height: MySize.size16,
              ),
              Container(
                width: MySize.scaleFactorWidth * 220,
                height: MySize.scaleFactorHeight * 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(width: 1, color: Colors.black)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    padding: EdgeInsets.symmetric(horizontal: MySize.size10),
                    elevation: 0,
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.black,
                    ),
                    iconSize: MySize.size36,
                    hint: const Text('Select Free Range'),
                    value: rangedropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        rangedropdownValue = newValue!;
                      });
                    },
                    items: range.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    isExpanded: false,
                    itemHeight: 50,
                    isDense: true,
                  ),
                ),
              ),
              SizedBox(
                height: MySize.size26,
              ),
              Text(
                "Gender",
                style: GoogleFonts.lato(
                    fontSize: MySize.size20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Column(
                children: List.generate(
                    isGender.length,
                    (index) => Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: MySize.size12),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                gen = index;
                              });
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: MySize.size26,
                                  width: MySize.size26,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1, color: Colors.black)),
                                  child: Container(
                                    margin: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: gen == index
                                            ? Colors.black
                                            : Colors.transparent),
                                  ),
                                ),
                                SizedBox(
                                  width: MySize.size15,
                                ),
                                Text(
                                  isGender[index],
                                  style: GoogleFonts.lato(
                                      fontSize: MySize.size18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: MySize.size26,
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
                height: MySize.size26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
