import 'package:abc_doctorz/utils/my_size.dart';
import 'package:abc_doctorz/views/patient_mdeical_record/helpline_dialog.dart';
import 'package:abc_doctorz/views/patient_mdeical_record/prescription_tab.dart';
import 'package:abc_doctorz/views/patient_mdeical_record/report_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientMedicalRecord extends StatefulWidget {
  const PatientMedicalRecord({super.key});

  @override
  State<PatientMedicalRecord> createState() => _PatientMedicalRecordState();
}

class _PatientMedicalRecordState extends State<PatientMedicalRecord>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff012A78),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Patient  Record",
          style: GoogleFonts.lato(
              color: const Color(0xff012A78),
              fontSize: MySize.size16,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Align(
            child: Padding(
              padding: EdgeInsets.only(right: MySize.size10),
              child: GestureDetector(
                onTap: () {
                  helpline_dialog(context);
                },
                child: Container(
                  height: MySize.size40,
                  width: MySize.size80,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: MySize.size22,
                      ),
                      SizedBox(
                        width: MySize.size6,
                      ),
                      Text(
                        "Help",
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: MySize.size15,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MySize.size20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: MySize.size22),
            height: 45,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(
                25.0,
              ),
            ),
            child: TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: const Color(0xff012A78),
              ),
              labelColor: Colors.white,
              labelPadding: const EdgeInsets.all(0),
              labelStyle: GoogleFonts.lato(
                fontSize: MySize.size15,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: const Color(0xff00BB9D),
              tabs: const [
                Tab(
                  text: 'My Reports',
                ),
                Tab(
                  text: 'Doctor Prescriptions',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [ReportTab(), PrescriptionTab()],
            ),
          ),
        ],
      ),
    );
  }
}
