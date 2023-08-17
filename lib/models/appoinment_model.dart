import 'package:flutter/material.dart';

class AppoinmentModel {
  String img;
  int idNo;
  String name;
  String specialization;
  String img1;
  String time;
  String date;
  Color containerColor;
  String status;
  AppoinmentModel(
      {required this.img,
      required this.idNo,
      required this.name,
      required this.specialization,
      required this.img1,
      required this.time,
      required this.date,
      required this.containerColor,
      required this.status});
  static List<AppoinmentModel> appoiment = [
    AppoinmentModel(
        img: "assets/Group 214.png",
        idNo: 11,
        name: "Dr.Asifa Iqbal",
        specialization: "Dentist",
        img1: "assets/Group 221.png",
        time: "12:00 AM",
        date: "Aug 14,2023",
        containerColor: const Color(0xff2E4444),
        status: "Ready To Call"),
    AppoinmentModel(
        img: "assets/Group 239.png",
        idNo: 21,
        name: "Dr.Asifa Iqbal",
        specialization: "Dermotologists",
        img1: "assets/Group 221.png",
        time: "12:00 AM",
        date: "Aug 14,2023",
        containerColor: const Color(0xff1B5BFB),
        status: "Pending"),
    AppoinmentModel(
        img: "assets/Group 251.png",
        idNo: 31,
        name: "Dr.Asifa Iqbal",
        specialization: "Gestroentorogists",
        img1: "assets/Group 221.png",
        time: "12:00 AM",
        date: "Aug 14,2023",
        containerColor: const Color(0xffFF0000),
        status: "Cancelled"),
    AppoinmentModel(
        img: "assets/Group 263.png",
        idNo: 41,
        name: "Dr.Asifa Iqbal",
        specialization: "General Physcians",
        img1: "assets/Group 221.png",
        time: "12:00 AM",
        date: "Aug 14,2023",
        containerColor: const Color(0xff39B54A),
        status: "Completed")
  ];
}
