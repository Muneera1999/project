import 'package:flutter/material.dart';  
  
void main() {  
  runApp(const MyApp());  
}  
  
class MyApp extends StatelessWidget {  
  const MyApp({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
   return const MaterialApp(  
    home: MyHomePage(),  
   );  
  }  
}  
  
class MyHomePage extends StatefulWidget {  
  const MyHomePage({Key? key}) : super(key: key);  
  
  @override  
  State<MyHomePage> createState() => _MyHomePageState();  
}  
  
class _MyHomePageState extends State<MyHomePage> {  
  String _displayText = '';  
  
  void _showDialog() {  
   showDialog(  
    context: context,  
    builder: (BuildContext context) {  
      final _textFieldController = TextEditingController();  
  
      return AlertDialog(  
       title: const Text('Enter Data'),  
       content: TextField(  
        controller: _textFieldController,  
       ),  
       actions: [  
        TextButton(  
          child: const Text('Submit'),  
          onPressed: () {  
           Navigator.of(context).pop(_textFieldController.text);  
          },  
        ),  
       ],  
      );  
    },  
   ).then((value) {  
    if (value != null) {  
      setState(() {  
       _displayText = value;  
      });  
    }  
   });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
   return Scaffold(  
    appBar: AppBar(  
      title: const Text('Dialog Example'),  
    ),  
    body: Center(  
      child: Column(  
       mainAxisAlignment: MainAxisAlignment.center,  
       children: [  
        Text(_displayText),  
        const SizedBox(height: 20),  
        ElevatedButton(  
          onPressed: _showDialog,  
          child: const Text('Show Dialog'),  
        ),  
       ],  
      ),  
    ),  
   );  
  }  
}
