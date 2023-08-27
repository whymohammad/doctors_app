import 'package:abc_doctorz/utils/my_size.dart';
import 'package:abc_doctorz/views/appoinment_dash/chart.dart';
import 'package:abc_doctorz/views/appoinment_dash/pie_chart.dart';
import 'package:flutter/material.dart';

class AppoinmentDashBoard extends StatefulWidget {
  const AppoinmentDashBoard({super.key});

  @override
  State<AppoinmentDashBoard> createState() => _AppoinmentDashBoardState();
}

class _AppoinmentDashBoardState extends State<AppoinmentDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: MySize.size100,
              width: MySize.size100,
              child: const PieChartSample2(),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
                height: MySize.scaleFactorHeight * 280,
                width: MySize.scaleFactorWidth * 340,
                child: Charts())
          ],
        ),
      ),
    );
  }
}
