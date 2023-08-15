
import 'package:abc_doctorz/views/auth_screens/register_screen.dart';
import 'package:abc_doctorz/views/bottom_navy_screen/bottom_navy_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/back_arrow_widget.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_richtext.dart';
import '../widgets/custom_txtfield.dart';
import '../widgets/headline_text.dart';
import '../widgets/normal_text.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.02,
                ),
                const BackArrowWIdget(),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                const HeadlineText(
                  title: "Welcome back! Glad\nto see you, Again!",
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                CustomTextField(
                    hintText: "Enter your email",
                    isObscure: false,
                    controller: emailController),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                CustomTextField(
                  hintText: "Enter your password",
                  isObscure: true,
                  controller: passwordController,
                  sufixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Transform.scale(
                      scale: 0.5, // Adjust the scale factor to resize the image
                      child: InkWell(
                        onTap: () {
                          //isShowPassword = !isShowPassword;
                          setState(() {});
                        },
                        child: Image.asset(
                          "assets/passwordicon.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                      onTap: () {
                      //  Get.to(() => ForgetPasswordScreen());
                      },
                      child: const NormalText(
                        text: "Forgot Password?",
                        color: Colors.grey,
                      )),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : CustomButton(
                        height: 56,
                        onTap: (){
                          Get.to(() => BottomNavyScreen());
                        },
                        text: "Login",
                      ),
                SizedBox(
                  height: Get.height * 0.134,
                ),
                Center(
                    child: InkWell(
                        onTap: () {
                         Get.to(() => RegisterScreen());
                        },
                        child: const CustomRichText(
                          text1: "Don’t have an account?",
                          text2: " Register Now",
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validate() {
    if (emailController.text.isEmpty) {
      print("email is empty");
      Get.snackbar("Warning", "email cannot be empty");

      return false;
    } else if (!emailController.text.isEmail) {
      print("enter valid email");
      Get.snackbar("Warning", "enter valid email");

      return false;
    } else if (passwordController.text.isEmpty) {
      print("password is empty");
      Get.snackbar("Warning", "password is empty");

      return false;
    } else if (passwordController.text.length < 6) {
      print("password is to short");
      Get.snackbar("Warning", "password is to short");

      return false;
    } else {
      return true;
    }
  }
}
