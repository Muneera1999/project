import 'package:flutter/material.dart';  
  
class Ninethtimetable extends StatefulWidget {  
  const Ninethtimetable({super.key});  
  
  @override  
  State<Ninethtimetable> createState() => _NinethtimetableState();  
}  
  
class _NinethtimetableState extends State<Ninethtimetable> {  
  List<String> period = ['6', '2', '1'];  
  List<String> sub = ['Physics', 'Mathematics', 'Mathematics'];  
  List<String> tutor = ['Anil V K', 'Muhammed P K', 'K sarath'];  
 
  
  @override  
  Widget build(BuildContext context) {  
   return Scaffold(  
    body:    
       SizedBox(  
        height: 500, // Specify the height of the ListView  
        child: ListView.builder(  
         itemCount: period.length,  
         itemBuilder: (context, indexx) {  
           return Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(  
              width: double.infinity,  
              decoration: BoxDecoration(  
               borderRadius: BorderRadius.circular(5),  
               color: Colors.grey[800],  
              ),  
              child: Padding(  
               padding: const EdgeInsets.all(8.0),  
               child: Column(  
                 children: [  
                  Container(  
                   child: Column(  
                     children: [  
                      Row( mainAxisAlignment: MainAxisAlignment.spaceAround, 
                       children: [  
                         Text('Period'),  
                         Text('Subject'),  
                         Text('Teacher')  
                       ],  
                      ),  
                      Row(  
                       mainAxisAlignment: MainAxisAlignment.spaceAround,  
                       children: [  
                         Text(period[indexx]),  
                         Text(sub[indexx]),  
                         Text(tutor[indexx])  
                       ],  
                      ),  
                     ],  
                   ),  
                   width: double.infinity,  
                   decoration: BoxDecoration(  
                     borderRadius: BorderRadius.circular(5),  
                     color: Colors.white,  
                   ),  
                  ),  
                  SizedBox(height: 10),  
                  Text('Room',style: TextStyle(color: Colors.white),),  
                  Text('Room 1',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),)  
                 ],  
               ),  
              ),  
             ),
           );  
         },  
        ),  
       ),  
        
    
   );  
  }  
}
