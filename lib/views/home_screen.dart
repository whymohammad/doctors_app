// ignore_for_file: must_be_immutable, camel_case_types, non_constant_identifier_names

import 'package:abc_doctorz/views/doctor_detail_screen.dart';
import 'package:abc_doctorz/views/widgets/custom_category_title_tilles.dart';
import 'package:abc_doctorz/views/widgets/headline_text.dart';
import 'package:abc_doctorz/views/widgets/normal_text.dart';
import 'package:abc_doctorz/views/widgets/regular_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/custom_txtfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      centerTitle: true,
        backgroundColor: Colors.purple,
        leading: const Icon(Icons.menu),
        title: const Text("your Logo"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/bell.png",height: 15,width: 15,),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 15,right: 20,top: 15),
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const RegularText(text: "Hello,Guests!",),
                  Align(
                    alignment: Alignment.centerRight,
                      child: Image.asset("assets/city.png",height: 20,width: 40,)),
                  const HeadlineText(title: "Find the Best Doctor Near You",size: 18,color: Colors.purple,)
                ],

              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 42,
                child: CustomTextField(
                  isObscure: false,
                  hintText: "search,doctors,hospitals,specialists",
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade400),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                ),
                child:const  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month,color: Colors.purple,),
                      SizedBox(width: 5,),
                      RegularText(text: "My Appointments",color: Colors.purple,)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const HeadlineText(title: "Hi,\nAnything\nYou Need",size: 20,),
              const SizedBox(
                height: 25,
              ),
              const RegularText(text: "Categories",),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                categoriesWidget(title: "Medicine",imagePath: "assets/tablet.png"),
                  categoriesWidget(title: "CheckUp",imagePath: "assets/notepad.png"),
                  categoriesWidget(title: "HealthCare",imagePath: "assets/notepad.png"),
                categoriesWidget(title: "Hospital",imagePath: "assets/building.png"),

                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    height: 170,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const HeadlineText(title: "Video Consultion",color: Colors.white,size: 10,),
                        const HeadlineText(title: "PMC Verified Doctors",color: Colors.black,size: 10,),
                        Align(
                          alignment: Alignment.bottomCenter,
                            child: Image.asset("assets/doc.png"))
                      ],
                    ),
                    ),
                  const SizedBox(width: 15,),
                  Container(
                    height: 170,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const HeadlineText(title: "Video Consultion",color: Colors.purple,size: 10,),
                        const HeadlineText(title: "PMC Verified Doctors",color: Colors.black,size: 10,),
                        const SizedBox(
                          height: 12,
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset("assets/lady_doc.png"))
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.cyan
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomCategoryTitleTiles(
                title: "Symptoms",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleImage(title: "Fever",imagePath: "assets/fevet.png"),
                  CircleImage(title: "Heart Attack",imagePath: "assets/heart.png"),
                  CircleImage(title: "Pregnancy",imagePath: "assets/girl.png"),
                  CircleImage(title: "Diarrhea",imagePath: "assets/direa.png"),


                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomCategoryTitleTiles(
                title: "Diseases",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleImage(title: "Dengue ",imagePath: "assets/bee.png"),
                  CircleImage(title: "Typhoid",imagePath: "assets/typhoid.png"),
                  CircleImage(title: "Piles",imagePath: "assets/virus.png"),
                  CircleImage(title: "Gastritis",imagePath: "assets/kidney.png"),


                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const HeadlineText(
                title:"Doctors in pakistan",
                color: Colors.grey,
                size: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  Get.to(()=>const DoctorDetailScreen());
                },
                  child: const DoctorsWidget()),
              const SizedBox(
                height: 10,
              ),
              const DoctorsWidget(),
              const SizedBox(
                height: 10,
              ),
              const DoctorsWidget(),
              const SizedBox(
                height: 10,
              ),
              const DoctorsWidget(),
              const SizedBox(
                height: 25,
              ),
              const HeadlineText(title: "Follow Us",size: 20,),
              const SizedBox(
                height: 25,
              ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialMediaWidget(text: "Subscribers",Followers: "1.2M",imagePath: "assets/Asset 24.png",),
                SocialMediaWidget(text: "Followers",Followers: "1.2M",imagePath: "assets/Asset 22.png",),
                SocialMediaWidget(text: "Followers",Followers: "1.2M",imagePath: "assets/Asset 21.png",),
                SocialMediaWidget(text: "Followers",Followers: "1.2M",imagePath: "assets/fb.png",),
              ],
            ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMediaWidget extends StatelessWidget {
  final String imagePath;
  final String Followers;
  final String text;
   const SocialMediaWidget({
    super.key,required this.text,required this.imagePath,required this.Followers
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath,height: 40,width: 40),
        const SizedBox(
          height: 5,
        ),
        RegularText(text: Followers,),
        const SizedBox(
          height: 3,
        ),
        RegularText(text: text,),

      ],
    );
  }
}

class DoctorsWidget extends StatelessWidget {
  const DoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      child: const Row(
        children: [
          Expanded(
            child: CircleAvatar(
              radius: 30,

                backgroundImage: AssetImage("assets/jon.jpg")
            ),
          ),
          Expanded(
            flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                HeadlineText(title: "Dr Awais Arif",size: 18,),
                RegularText(text: "Dentist",),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadlineText(
                      title: "15 years of Experince",
                      size: 12,
                    ),
                    Row(

                      children: [
                        Icon(Icons.star,size:18,color:  Colors.green,),
                        Text("4.9/5")
                      ],
                    ),
                  ],
                )
          ],),
              ))

        ],
      ),
    );
  }
}

class categoriesWidget extends StatelessWidget {
  String imagePath;
  String title;
   categoriesWidget({
    super.key,required this.title,required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: Get.height*0.15,
    width: Get.width*0.2,
             // color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath,width: 45,height: 45),
          const SizedBox(height: 10,),
          NormalText(text: title,size: 12,)
        ],
      ),
            );
  }
}
class CircleImage extends StatelessWidget {
  String imagePath;
  String title;
  CircleImage({
    super.key,required this.title,required this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height*0.16,
      width: Get.width*0.2,
      // color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Transform.scale(
              scale: 0.6, // You can adjust this scale factor to make the image smaller
              child: Image.asset(
                imagePath,
              ),
            ),
          ),


          const SizedBox(height: 10,),
          NormalText(text: title,size: 12,)
        ],
      ),
    );
  }
}
