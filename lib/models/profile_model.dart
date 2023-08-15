import 'package:abc_doctorz/utils/app_const.dart';

class ProfileModel {
  String name;
  String date;
  String text;
  ProfileModel({required this.name, required this.date, required this.text});
  static List<ProfileModel> profilemodel = [
    ProfileModel(name: "Imad", date: "21 / 03 / 2023", text: AppConst.text2),
    ProfileModel(name: "Muneeb", date: "08 / 08/ 2023", text: AppConst.text2),
  ];
}
