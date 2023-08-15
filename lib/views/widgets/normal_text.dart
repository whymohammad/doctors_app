import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? size;
  const NormalText({
  super.key,this.color,this.text,this.size
  });

  @override
  Widget build(BuildContext context) {
    return Text(text!,style: TextStyle(fontSize:size??10,fontWeight: FontWeight.w400,color: color),);
  }
}