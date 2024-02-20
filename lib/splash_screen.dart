import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Questions()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundColor: Colors.blue,maxRadius: 200.0,
                backgroundImage: NetworkImage('https://i0.wp.com/allmaverick.com/wp-content/uploads/2022/04/FRXvaJKXIAMo3YF.jpg?resize=770%2C468&ssl=1'))
                        ],
          ),
        ),
      ),
    );
  }
}
