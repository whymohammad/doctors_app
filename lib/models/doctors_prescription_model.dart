class DoctorPrescripTionModel {
  String img;
  String title;
  String subTitle;
  String text1;
  String text2;
  String text3;
  String richText1;
  String richText2;
  DoctorPrescripTionModel(
      {required this.img,
      required this.title,
      required this.subTitle,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.richText1,
      required this.richText2});
  static List<DoctorPrescripTionModel> doctorprescription = [
    DoctorPrescripTionModel(
        img: "assets/Asset 21.png",
        title: "Dr.Muhammad Imran Malik",
        subTitle: "Urologist",
        text1: "Imad Ahmad",
        text2: "Aug 17 2023,09:45 PM",
        text3: "Diagnosis",
        richText1: "Medicines ",
        richText2:
            "Cap.cefspan 400 mg ek rozana for 5 days.tab.genurin forte 1+0+1 for 5 days.cyp cetrolica 2+2+2 mix in half glass water")
  ];
}
