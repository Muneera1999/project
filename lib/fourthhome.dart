import 'package:flutter/material.dart';
import 'package:myproject/eighthsubject.dart';
import 'package:myproject/eleventhleave.dart';
import 'package:myproject/fifthnotice.dart';

import 'package:myproject/ninethttr.dart';
import 'package:myproject/seventhstaffdirectory.dart';
import 'package:myproject/sixthdiary.dart';
import 'package:myproject/tenthprofile.dart';

class Fourthhome extends StatefulWidget {
  const Fourthhome({super.key});

  @override
  State<Fourthhome> createState() => _FourthhomeState();
}

class _FourthhomeState extends State<Fourthhome> {
  int index = 0;
  List<String>datash =['Programming contest',
  'Parents meeting',
  'College day',
  'College election',
  'Arts festival'];
  List<String>datas =['the International Collegiate Programming Contest is an algorithmic programming contest for college students. Teams of three, representing their university, work to solve the most real-world problems, fostering collaboration, creativity, innovation, and the ability to perform under pressure. Through training and competition, teams challenge each other to raise the bar on the possible. Quite simply, it is the oldest, largest, and most prestigious programming contest in the world.',
  'The parents-teacher meeting is the key component in school education because parents get an opportunity to connect with the teachers and discuss about the academic progress of their child and to develop strategies to support their child s learning ability.',
  'Our goal is to create a college-going culture among the students, and to inspire and support first-generation students in their pursuit of a college education.',
  'Becoming a students union officer allows you to bring about the change you d like to see in your institution. It also looks impressive on your CV. Learn more about running in a student election',
  'An Arts Festival is an umbrella term for a festival that focuses on multiple art genres including fine art (painting, drawing, pottery), music, photography, film, and other visual styles.'];
  
   var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(appBar:AppBar(leading: Builder(builder: (context){
      return  GestureDetector(onTap: (){Scaffold.of(context).openDrawer();},
        child: Icon(Icons.menu));
    }),
       title: Center(child: Text('JEETMEET',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),)),
    actions: [Icon(Icons.messenger_outline),
    SizedBox(width: 10,)],),
    body: ListView(
      children: [
        Stack(
          children: [
            Container(height: height*.6,width: double.infinity,
            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(MediaQuery.of(context).size.width, 100.0))),),
          Positioned(left: .1*width,top: 70,right: .1*width, 
          child: Container(decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
            height: height*.35,width: width*.8,)),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(radius: 60,backgroundImage: AssetImage('asset/izaan.jpg'),),
                 Text('Izaan Haris'),
                 Text('Reg.No : 12345'),
                 SizedBox(height: 20,)
                
                  ],
                  
                ),
              ],
            ),
               Positioned(left: .1*width,top: 200,right: .1*width,
                 child: Container(height: 50,width: width,
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Column(
                         children: [
                           Text('Class - A'),
                           Text('Roll No - 12')
                         ],
                         
                       ),
                       VerticalDivider(thickness: 1,color: Colors.grey,),
                       Column(
                         children: [
                           Text('Division - A'),
                           Text('DOB - 1-09-2021')
                         ],
                       )
                     ],
                   ),
                 ),
               ),
               Positioned(top: 280,
                 child: Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(width: width,
                       child: Column(
                         children: [
                           CircleAvatar(radius: 27,backgroundColor: Colors.red,
                            child: CircleAvatar(backgroundImage: NetworkImage('data:image/jpeg;base64,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'),radius: 25,)),
                        Text('Haris Rahman',style: TextStyle(color: Colors.white),),
                        Text('Parent',style: TextStyle(color: Colors.white),) ],
                       ),
                     ),
                   ],
                 ),
               ),
             
          ]
              
        ),
        
        
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [Row(
                children: [
                  Icon(Icons.notifications,color: Colors.yellow,),
                  SizedBox(width: 10,),
                  Text('Notice'),
                ],
              ),
              SizedBox(height: 10,),
                ListView.builder(physics: ScrollPhysics(),shrinkWrap: true,
                  itemCount: datas.length,
                  itemBuilder: (BuildContext context,int index){
                  return Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(width: 300,
                            child: Column(
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(datash[index],style: TextStyle(fontWeight: FontWeight.w900),),
                                  ],
                                ),
                                Text(datas[index],maxLines: 2,overflow: TextOverflow.ellipsis,),
                              ],
                            )),
                       Spacer(),
                       GestureDetector(onTap:
                        (){Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => Fifthnotice(datas: datas, index: index, datash: datash,)),  );},
                        child: Icon(Icons.keyboard_arrow_right,color: Colors.grey,))
//                        IconButton(onPressed: (){Navigator.of(context).push(
//   MaterialPageRoute(builder: (context) => Fifthnotice(datas: datas, index: index)),  ); }, icon: Icon(Icons.keyboard_arrow_right,color: Colors.grey,))
                       
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Divider(),
                      )
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
      )
      ],
    ),
    drawer: Column(
      children: [
        Stack(children: [Container(height: 150,width: width*.8,color: Colors.red),
        Positioned(left: 20,top: 30,
          child: CircleAvatar(radius: 40,backgroundColor: Colors.white,
          child: CircleAvatar(radius: 38,backgroundImage: AssetImage('asset/izaan.jpg'),),),
        ),
        Positioned(left: 130,top: 50,
          child: Column(
            children: [
              Text('Hello',style: TextStyle(color: Colors.white),),
              SizedBox(height: 10,),
              Text('Izaan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),),
            ],
          ),
        )]),
        Expanded(
          child: Container(width: width*.8,color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  
                    ListTile(leading: Icon(Icons.dashboard_outlined),
                                    title: Text('Dashboard'),
                                    ),
                    ExpansionTile(children: [
                      InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                      Tenthprofile()));},
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Profile',style: TextStyle(fontSize: 16)),
                          ),
                        ],
                                            ),
                      ),
                    SizedBox(height: 10,),
                    InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                      Eleventhleave()));},
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('leave',style: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                    )
                    ],
                     title : Text('Personal'),leading: Icon(Icons.person_outline),
                    ),
                 
                  ExpansionTile(
                   title: Text('Academic'),
                   leading: Icon(Icons.school_outlined),
                   children: [InkWell(splashColor: Colors.red,
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Seventhstaffdirectory()));},
                     child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Staff Directory',style: TextStyle(fontSize: 16)),
                          ),
                        ],
                      ),
                   ),
                    SizedBox(height: 10,),
                    InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Ninethttr()));},
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Timetable Report',style: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                    ),
                     SizedBox(height: 10,),
                    InkWell(onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Eighthsubject()));
                    },
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Subject',style: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                    )
                    ],
                   
                  ),
                  ListTile(leading: Icon(Icons.auto_stories_outlined),
                  title: Text('Library'),
                  trailing: Icon(Icons.expand_more),
                  onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Sixthdiary()));},
                  ),
              
                 
                   ListTile(leading: Icon(Icons.text_snippet),
                  title: Text('Mock Test'),
                  trailing: Icon(Icons.expand_more),),
                  ListTile(leading: Icon(Icons.library_books_outlined),
                  title: Text('Exam'),
                  trailing: Icon(Icons.expand_more),),
                  ListTile(leading: Icon(Icons.video_call),
                  title: Text('Online Class'),),
                  ListTile(leading: Icon(Icons.logout),
                  title: Text('Logout'),)
                ],
              ),
            ),
          ),),
        )
      ],
    ),
    );
  }
}