import 'package:flutter/material.dart';

class RegularText extends StatelessWidget {
  final String? text;
  final Color? color;
  const RegularText({
  super.key,this.color,this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(text!,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: color),);
  }
}