import 'package:flutter/material.dart';

class Fifthnotice extends StatelessWidget {
   final List<String>datas;  
    final List<String>datash; 
    final int index; 
  Fifthnotice({super.key, required this.datas,required this.index,required this.datash});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: GestureDetector(onTap: (){Navigator.of(context).pop();},
      child: Icon(Icons.arrow_back)),
    title: Text('Notice',style: TextStyle(fontSize: 18),),),
    body: 
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Expanded(
                child: Container(child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Title',style: TextStyle(fontWeight: FontWeight.w800),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(datash[index]),
                      ],
                    ),
                    Divider(),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Description',style: TextStyle(fontWeight: FontWeight.w800),),
                      ],
                    ),
                      SizedBox(height: 10,),
                    Text(datas[index])
                  ],
                ),),
              ),
            ),
          ),
        ),
      ],
    )
    
   
      );
  }
}