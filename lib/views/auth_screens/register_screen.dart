import 'dart:io';
import 'package:abc_doctorz/views/bottom_navy_screen/bottom_navy_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/back_arrow_widget.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_richtext.dart';
import '../widgets/custom_txtfield.dart';
import '../widgets/headline_text.dart';
import '../widgets/normal_text.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController userNameController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    userNameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    super.dispose();
  }
bool isLoading = false;

  // signUp(){
  //
  //   if (validate()) {
  //     setState(() {
  //       isLoading = true;
  //     });
  //
  //     authService.registerWithEmailAndPassword(email: emailController.text, password: passwordController.text, name: userNameController.text,selectedImage: selectedImage).then((user) {
  //      NotificationServices.storeToken();
  //       // Login successful
  //       setState(() {
  //         isLoading = false;
  //       });
  //     }).catchError((error) {
  //       // Login failed
  //       setState(() {
  //         isLoading = false;
  //       });
  //
  //       String errorMessage = "An error occurred";
  //       if (error is FirebaseAuthException) {
  //         errorMessage = error.message ?? errorMessage;
  //       }
  //
  //       Get.snackbar("Error", errorMessage);
  //     });
  //   }
  //
  // }
  //
  File? selectedImage;

  ImagePicker _picker = ImagePicker();

  getImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);
    if (image != null) {
      selectedImage = File(image.path);
      setState(() {});
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  const HeadlineText(
                    title: "Hello! Register to get\nstarted",
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Center(
                    child:  Stack(
                      children: [
                        CircleAvatar(
                          radius: 48,
                          backgroundImage: selectedImage != null
                              ? FileImage(
                              selectedImage!) // Cast to ImageProvider<Object>
                              : AssetImage("assets/jon.jpg") as ImageProvider<
                              Object>, // Cast to ImageProvider<Object>
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: InkWell(
                              onTap: () {
                                Get.bottomSheet(customBottomSheet());
                              },
                              child: Image.asset(
                                "assets/tabler_edit.png",
                                height: 30,
                                width: 30,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                        hintText: "UserName",
                        isObscure: false,
                        controller: userNameController),
                  ),
                  SizedBox(
                    height: Get.height * 0.001,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                        hintText: "Email",
                        isObscure: false,
                        controller: emailController),
                  ),
                  SizedBox(
                    height: Get.height * 0.001,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      hintText: "Password",
                      isObscure: false,
                      controller: passwordController,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.001,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextField(
                      hintText: "Confirm password",
                      isObscure: false,
                      controller: confirmPasswordController,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.032,
                  ),
                 isLoading?Center(child: CircularProgressIndicator()): CustomButton(
                    height: 56,
                    onTap: (){
                      Get.to(()=>BottomNavyScreen());
                    },
                    text: "Register",
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  Center(
                      child: InkWell(
                          onTap: () {
                            Get.to(() => LoginScreen());
                          },
                          child: const CustomRichText(
                            text1: "Already have an account?",
                            text2: " Login Now",
                          ))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget customBottomSheet() {
    return Container(
      height: Get.height * 0.2,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              getImage(ImageSource.camera);
            },
            child: Column(
              children: [
                const Icon(Icons.camera, color: Colors.green, size: 40),
                NormalText(text: "Camera"),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              getImage(ImageSource.gallery);
            },
            child: Column(
              children: [
                const Icon(Icons.photo, color: Colors.green, size: 40),
                NormalText(text: "Gallery"),
              ],
            ),
          ),
        ],
      ),
    );
  }
  bool validate(){
    if(emailController.text.isEmpty){
      print("email is empty");
      Get.snackbar("Warning", "email cannot be empty");
      return false;
    }else if(!emailController.text.isEmail){
      print("enter valid email");
      Get.snackbar("Warning", "enter valid a email");
      return false;
    }else if(passwordController.text.isEmpty){
      print("password is empty");
      Get.snackbar("Warning", "password cannot be empty");
      return false;
    }else if(passwordController.text.length<6){
      print("password is to short");
      Get.snackbar("Warning", "password is to short");
      return false;
    }else if(userNameController.text.isEmpty){
      print("please enter your good name");
      Get.snackbar("Warning", "please enter your name");
      return false;
    }else if(passwordController.text != confirmPasswordController.text){
      print("password does not match");
      Get.snackbar("Warning", "password does not match");
      return false;
    }else if(selectedImage ==null){

      Get.snackbar("Warning", "Select an image");
      return false;
    }
    else{
      return true;
    }
  }
}
