import 'dart:ui';

import 'package:amritha_ayurvedha/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
     routerConfig: router,
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Future.delayed(Duration(seconds: 5),(){
      if(mounted){
              context.go('/login');

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          //background image
          Image.asset("assets/images/splash_background.jpg",fit: BoxFit.cover,),
          //blur
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
          child: Container(
            //add some color to the blur
             color: Colors.black.withOpacity(0.3),
          ),
          ),
          //logo
          Center(child: Image.asset("assets/images/splash_logo.png",width: 150,height: 150,),)
        ],
      )
    );
  }
}