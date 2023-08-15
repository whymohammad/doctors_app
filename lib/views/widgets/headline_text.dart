import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  final String? title ;
  final double? size ;
  final Color? color ;
  const HeadlineText({
  super.key,this.title,this.size,this.color
  });

  @override
  Widget build(BuildContext context) {
    return Text(title!,style:  TextStyle(fontSize:size ?? 28,fontWeight: FontWeight.w600,color:color?? Colors.black),);
  }
}