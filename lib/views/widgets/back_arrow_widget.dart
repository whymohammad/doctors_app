import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackArrowWIdget extends StatelessWidget {
  const BackArrowWIdget({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.back();
      },
      child: Container(
        alignment: Alignment.topLeft,
        width: 40,
        height: 40,
        child: Icon(Icons.arrow_back_ios,size: 20,),
      ),
    );
  }
}