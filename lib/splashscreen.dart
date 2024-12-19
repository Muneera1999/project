import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myproject/secondlogin.dart';

class Splashscreen extends StatefulWidget {
  
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>
    Secondlogin()));});
    // TODO: implement initState
    super.initState();
  }
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    
    return Scaffold(body: Center(child: Container(height: height/4,width: height/4,decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),color: Colors.red
    ),
      child: Center(child: Text('JEETMEET',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),)),)),);
  }
}