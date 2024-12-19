import 'package:flutter/material.dart';
import 'package:myproject/fourthhome.dart';
import 'package:myproject/thirdforgotpassword.dart';

class Secondlogin extends StatefulWidget {
  const Secondlogin({super.key});

  @override
  State<Secondlogin> createState() => _SecondloginState();
}

class _SecondloginState extends State<Secondlogin> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(body: Column(
      children: [
        Image.asset('asset/project1,1.jpg'),
        Text('Login',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 25),),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 8,bottom: 8),
          child: TextField(decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
            label: Text('User Name')),),
        ),
           Padding(
             padding: const EdgeInsets.only(left: 25,right: 25,top: 8,bottom: 8),
             child: TextField(decoration: InputDecoration(
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
                       label: Text('Password')),),
                       
           ),
           TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Thirdforgotpassword()));
           }, child: Text('Forgot your password?')),
           Container(height: 50,width: width*0.87,
             child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fourthhome()));
              }, child: Text('Login',style: TextStyle(color: Colors.white),)),
           )
      ],
    ));
  }
}