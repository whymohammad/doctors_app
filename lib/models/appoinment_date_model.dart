class AppoinmentDate {
  String weekDay;
  String no;

  AppoinmentDate({required this.weekDay, required this.no});
  static List<AppoinmentDate> appoinmentDate = [
    AppoinmentDate(weekDay: "Mon", no: "21"),
    AppoinmentDate(weekDay: "Tue", no: "22"),
    AppoinmentDate(weekDay: "Wed", no: "23"),
    AppoinmentDate(weekDay: "Thu", no: "24"),
    AppoinmentDate(weekDay: "Fri", no: "25"),
  ];
}
