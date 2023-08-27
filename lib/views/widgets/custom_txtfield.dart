// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
   bool isObscure = false;
  final Widget? sufixIcon;
  final Widget? prefixIcon;
  void Function(String)? onChanged;
  final TextEditingController? controller;
  CustomTextField(
      {super.key,
      this.onChanged,
      this.controller,
      this.hintText,
      this.isObscure = false,
      this.sufixIcon,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0.5,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        obscureText: isObscure!,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: sufixIcon,
            hintText: hintText,
            hintStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Color(0xff8391A1)),
            contentPadding:
                const EdgeInsets.only(top: 18, left: 18, bottom: 18),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
