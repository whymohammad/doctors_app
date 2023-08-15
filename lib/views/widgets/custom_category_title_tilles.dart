
import 'package:flutter/material.dart';

import 'headline_text.dart';

class CustomCategoryTitleTiles extends StatelessWidget {
  final String? title;
  const CustomCategoryTitleTiles({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HeadlineText(
          size: 18,
          title: title!,
        ),
        const Text("view all >",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 13,
            ))
      ],
    );
  }
}