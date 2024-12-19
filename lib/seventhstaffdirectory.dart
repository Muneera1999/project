import 'package:flutter/material.dart';

class Seventhstaffdirectory extends StatefulWidget {
  const Seventhstaffdirectory({super.key});

  @override
  State<Seventhstaffdirectory> createState() => _SeventhstaffdirectoryState();
}

class _SeventhstaffdirectoryState extends State<Seventhstaffdirectory> {
  List<String>sub = ['Mathematics',
  'Physics'];
  List<String>tutor = ['K Sarath, Muhammed P K, Anil V K',
  'Anil V K'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: GestureDetector(onTap: (){Navigator.of(context).pop();},
      child: Icon(Icons.arrow_back)),title: Text('Staff Directory',style: TextStyle(fontSize: 18)),)
      ,body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('  Subject Teacher'),
              ],
            ),
            SizedBox(height: 10,)
,            Expanded(
              child: ListView.builder(itemCount: sub.length,
                itemBuilder: (BuildContext context, int index){
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Subject    :  ${sub[index]}'),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Teacher    :  ${tutor[index]}'),
                          ],
                        ),
                      ],
                    ),),
                  ),
                );
              }),
            )
            
            
          ],
        ),
      ),);
  }
}