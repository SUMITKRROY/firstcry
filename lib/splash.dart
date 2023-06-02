import 'dart:async';



import 'package:firstcry/HomePage.dart';
import 'package:flutter/material.dart';


class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 03), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>  FirstCry()
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*  Text(
            "Welcome  real bot",
            style:  Styles.headingStyle,
            textAlign: TextAlign.center,
          ),*/
              Container(
                //alignment: Alignment.center,
                child: (Image.asset(
                  'assets/images/images.jpeg',
                  //fit: BoxFit.cover,
                )),
              ),




            ],
          ),)
    );
  }






}