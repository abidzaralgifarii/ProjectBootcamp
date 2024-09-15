import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menumate/app/modules/register/views/widget.dart';
import 'package:menumate/app/routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xffE2D1D1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView(children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/image/logo.png', width: 240, height: 200),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SIGN UP',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            Text(
                              'Already Account ',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                            InkWell(
                              onTap: () {
                                Get.offNamed(Routes.LOGIN);
                              },
                              child: Text(
                                '| LOGIN',
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomInput(
                    label: 'Email',
                    controller: emailController,
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  CustomInput(
                      label: 'Password',
                      controller: passwordController,
                      obscureText: true),
                  SizedBox(height: 20),
                  CustomInput(
                      label: 'confirm Passsword',
                      controller: confirmPasswordController,
                      obscureText: true),
                  SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () async {
                      String email = emailController.text;
                      String password = passwordController.text;
                      String confirmPassword = confirmPasswordController.text;
                      if (password == confirmPassword) {
                        try {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: email, password: password);
                          Get.offNamed(Routes.BOTTOMBAR);
                        } on FirebaseAuthException catch (e) {
                          print(e.message);
                        }
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(128, 150, 20, 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 95, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Or Register With',
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icon/icon_google.png',
                          height: 48, width: 48),
                      SizedBox(width: 26),
                      Image.asset('assets/icon/icon_fb.png',
                          height: 48, width: 48),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
