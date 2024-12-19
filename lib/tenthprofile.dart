import 'package:flutter/material.dart';

class Tenthprofile extends StatefulWidget {
  const Tenthprofile({super.key});

  @override
  State<Tenthprofile> createState() => _TenthprofileState();
}

class _TenthprofileState extends State<Tenthprofile> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(appBar: AppBar(leading: IconButton(onPressed: (){Navigator.of(context).pop();}
    , icon: Icon(Icons.arrow_back)) ,
    actions: [Icon(Icons.messenger_outline),
    SizedBox(width: 10,)],),
    body: Stack(
      children: [
        Column(
          children: [
            Container(height: height*.1,width: width,color: Colors.red,),
            Expanded(child: Container(width: double.infinity,color: Colors.grey[200],))
          ],
        ),
      Column(
        children: [
          Positioned(  
              top: height*.04, // adjust this value to position the avatar  
              left: 0,  
              right: 0,  
              child: Center(  
          child: Stack(alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(  
               radius: 50,  
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 45,
              backgroundImage: AssetImage('asset/izaan.jpg'),), // replace with your image URL  
              ),
              CircleAvatar(radius: 20,backgroundColor: Colors.white,
              child: Icon( Icons.image_outlined,))
            ],
          ),  
              ),  
             ),
             Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Izaan Haris",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                 SizedBox(height: 10,),
                 Icon(Icons.edit,size: 15,)
               ],

             ),
             Text("Roll No : 1234"),
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: ListView(
                   children: [
                     Container(child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                         children: [
                           CircleAvatar(radius: 28,backgroundColor: Colors.red,
                           child: CircleAvatar(radius: 25,backgroundImage: AssetImage('asset/parent.jpg'),),),
                         SizedBox(width: 25,),  Column(crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Haris Rahman",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                               Text("Parent")
                             ],
                           )
                         ],
                       ),
                     ),
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: 
                     Colors.white),width: width*.95,),
                 
                 SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: 
                 Colors.white),width: width*.95,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                           Text('Email              : abcd@gmail.com'),
                           SizedBox(height: 10,),
                           Text('Secondary Phone No:'),   SizedBox(height: 10,),
                           
                           Text('Address        : abcd'),   SizedBox(height: 10,),
                           Text('Place              : efgh'),   SizedBox(height: 10,),
                           Text('Post Code      : 0987'),   SizedBox(height: 10,),
                           Text('Blood Group  : B +ve'),
                     ],
                   ),
                 ),),
                 SizedBox(height: 10,),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: 
                 Colors.white),width: width*.95,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                           Text('Email              : abcd@gmail.com'),
                           SizedBox(height: 10,),
                           Text('Secondary Phone No:'),   SizedBox(height: 10,),
                           
                           Text('Address        : abcd'),   SizedBox(height: 10,),
                           Text('Place              : efgh'),   SizedBox(height: 10,),
                           Text('Post Code      : 0987'),   SizedBox(height: 10,),
                           Text('Blood Group  : B +ve'),   SizedBox(height: 10,),
                           Text('State              : Kerela'),   SizedBox(height: 10,),
                           Text('Country         : India'),   SizedBox(height: 10,),
                            Text('Nationality    : '),
                     ],
                   ),
                 ),),
                    ],
                 ),
               ),
             ),
        ],
      ),
      ],
    ),);
  }
}