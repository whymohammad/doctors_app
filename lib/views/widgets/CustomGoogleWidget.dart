
import 'package:flutter/material.dart';

class CustomGoogleWidget extends StatelessWidget {
  final Function onTap;
  const CustomGoogleWidget({
  super.key,required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 56,
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
         border: Border.all(color: Color(0xffE8ECF4),)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 0.5, // Adjust the scale factor to resize the image
              child: Image.asset(
                "assets/google_ic.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 5,),
            Center(child: Text( 'Continue with Google',)),
          ],
        ),
      ),
    );
  }
}