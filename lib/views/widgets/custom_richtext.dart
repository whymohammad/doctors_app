import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String? text1;
  final String? text2;
  const CustomRichText({Key? key,this.text1,this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: const  TextStyle(
                color: Color(0xff1E232C),
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),
          ),
          TextSpan(
            text: text2,
            style:const  TextStyle(
              color: Colors.purple,
              fontSize: 15,
              fontWeight: FontWeight.w700
            ),
          ),
        ],
      ),
    )
    ;
  }
}
