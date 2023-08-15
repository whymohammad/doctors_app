import 'package:abc_doctorz/views/widgets/regular_text.dart';
import 'package:flutter/material.dart';

import 'normal_text.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Function onTap;
  final double height;
  final double? radius;
  const CustomButton({
  super.key,this.text,required this.onTap,required this.height,this.radius
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius??8),
          gradient:  LinearGradient(
            begin: Alignment(-1.0, -1.0),
            end: Alignment(1.0, 1.0),
            transform: GradientRotation(90.7),
            stops: [-0.315, 1.4327],
            colors: [
              Colors.purple.shade100,
              Colors.purple,
            ],
          ),
        ),
        child: Center(child: FittedBox(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RegularText(text: text,color: Colors.white),
        ))),
      ),
    );
  }
}