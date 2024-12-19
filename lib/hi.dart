import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MyApp());  
}  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
   return MaterialApp(  
    home: Scaffold(  
      appBar: AppBar(  
       title: Text('AlertDialog with TextField'),  
      ),  
      body: Center(  
       child: ElevatedButton(  
        onPressed: () {  
          showDialog(  
           context: context,  
           builder: (BuildContext context) {  
            return AlertDialog(  
              title: Text('AlertDialog with TextField'),  
              content: TextField(  
               decoration: InputDecoration(  
                border: OutlineInputBorder(),  
                hintText: 'Enter your text',  
               ),  
              ),  
              actions: [  
               TextButton(  
                onPressed: () {  
                  Navigator.of(context).pop();  
                },  
                child: Text('Cancel'),  
               ),  
               TextButton(  
                onPressed: () {  
                  Navigator.of(context).pop();  
                },  
                child: Text('OK'),  
               ),  
              ],  
            );  
           },  
          );  
        },  
        child: Text('Show AlertDialog'),  
       ),  
      ),  
    ),  
   );  
  }  
}
