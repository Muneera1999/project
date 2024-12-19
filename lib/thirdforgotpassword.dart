import 'package:flutter/material.dart';

class Thirdforgotpassword extends StatefulWidget {
  const Thirdforgotpassword({super.key});

  @override
  State<Thirdforgotpassword> createState() => _ThirdforgotpasswordState();
}

class _ThirdforgotpasswordState extends State<Thirdforgotpassword> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
     size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(body: Column(
      children: [
        SizedBox(height: 100,),
         Text('Forgot Password',style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 25),),
        Padding(
                 padding: const EdgeInsets.only(left: 25,right: 25,top: 20,bottom: 30),
                 child: TextField(decoration: InputDecoration(
                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
                           label: Text('Enter Email')),),
                            ),
                             Container(height: 50,width: width*0.87,
             child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
              onPressed: (){}, child: Text('Submit',style: TextStyle(color: Colors.white),)),
           )
      ],
    ));
  }
}