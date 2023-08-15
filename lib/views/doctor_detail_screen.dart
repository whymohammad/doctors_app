import 'package:abc_doctorz/views/widgets/headline_text.dart';
import 'package:abc_doctorz/views/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Dr Abdul Raziq",style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          SizedBox(height: Get.height*0.03,),
          Container(
            height: Get.height*0.18,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 40,
                ),
                Column(
                  children: [
                    HeadlineText(title: "Dr Abdul Raziq",size: 20,),
                    RegularText(text: "Doctors Hospital(Johar Town)"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
