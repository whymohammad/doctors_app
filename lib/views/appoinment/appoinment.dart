import 'package:abc_doctorz/utils/my_size.dart';
import 'package:abc_doctorz/views/appoinment/appoinment_tab.dart';
import 'package:abc_doctorz/views/appoinment_dash/appoinment_dashboard.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppoinmentScreen extends StatefulWidget {
  const AppoinmentScreen({super.key});

  @override
  State<AppoinmentScreen> createState() => _AppoinmentScreenState();
}

class _AppoinmentScreenState extends State<AppoinmentScreen>
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
        backgroundColor: const Color(0xff012A78),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Appoinment",
          style: GoogleFonts.lato(
              fontSize: MySize.size22,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MySize.size30,
          ),
          // EasyDateTimeLine(
          //   initialDate: DateTime.now(),
          //   onDateChange: (selectedDate) {},
          //   activeColor: const Color(0xff012A78),
          //   headerProps: const EasyHeaderProps(
          //       centerHeader: false,
          //       showHeader: false,
          //       padding: EdgeInsets.all(0)),
          //   dayProps: const EasyDayProps(
          //     dayStructure: DayStructure.dayNumDayStr,
          //     activeBorderRadius: 100,
          //     inactiveBorderRadius: 48.0,
          //     height: 56.0,
          //     width: 56.0,
          //     activeDayNumStyle: TextStyle(
          //       color: Colors.white,
          //       fontSize: 16.0,
          //       fontWeight: FontWeight.bold,
          //     ),
          //     inactiveDayNumStyle: TextStyle(
          //       fontSize: 18.0,
          //     ),
          //   ),
          // ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: MySize.size20),
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: const Color(0xff012A78),
              ),
              color: Colors.white,
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
                  text: 'Appointments',
                ),
                Tab(
                  text: 'Dashboard',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                AppoinmentTab(),
                AppoinmentDashBoard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
