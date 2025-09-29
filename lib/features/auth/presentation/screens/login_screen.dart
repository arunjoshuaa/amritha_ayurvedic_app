import 'dart:ui';

import 'package:amritha_ayurvedha/features/auth/presentation/widgets/custom_button.dart';
import 'package:amritha_ayurvedha/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: ClipRect(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    //background image
                    Image.asset(
                      "assets/images/splash_background.jpg",
                      fit: BoxFit.cover,
                    ),
                    //blur
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        //add some color to the blur
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    //logo
                    Center(
                      child: Image.asset(
                        "assets/images/splash_logo.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Login Or Register To Book\nYour Appoinments",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomTitleTextfield(
                      title: "Email",
                      hintText: "Enter your Email",
                    ),
                    SizedBox(height: 20),
                    CustomTitleTextfield(
                      title: "Password",
                      hintText: "Enter password",
                    ),
                    SizedBox(height: 70),
                    CustomButton(buttonText: "Login", onPressed: () {}),
                    SizedBox(height: 120),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        text:
                            "By creating or logging into an account, you are agreeing with our ",
                        children: [
                          TextSpan(
                            text: "Terms and Conditions",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF0128f6),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Terms and conditions viewed");
                              },
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              color: Color(0XFF0128f6),

                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Privacy policy viewed");
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
