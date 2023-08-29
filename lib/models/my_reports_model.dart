class MyReportsModel {
  String img;
  String title;
  String subTitle;
  String text1;
  String text2;
  String text3;
  MyReportsModel(
      {required this.img,
      required this.title,
      required this.subTitle,
      required this.text1,
      required this.text2,
      required this.text3});
  static List<MyReportsModel> myReport = [
    MyReportsModel(
        img: "assets/Asset 21.png",
        title: "Imad Ahmad-Report",
        subTitle: "Imad Ahmad",
        text1: "Dr.Muhammad Imran Malik",
        text2: "Aug 17 2023",
        text3: "Files Attached 1")
  ];
}
