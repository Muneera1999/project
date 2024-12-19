import 'package:flutter/material.dart';

class Sixthdiary extends StatefulWidget {
  const Sixthdiary({super.key});

  @override
  State<Sixthdiary> createState() => _SixthdiaryState();
}

class _SixthdiaryState extends State<Sixthdiary> {
   
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(appBar: AppBar(leading: GestureDetector(onTap: (){Navigator.of(context).pop();},
      child: Icon(Icons.arrow_back)),title: Text('Diary',style: TextStyle(fontSize: 18)),
    actions: [
      Icon(Icons.search),
      SizedBox(width: 20,),
      Icon(Icons.messenger_outline),SizedBox(width: 10,),
    ],),
    body: Column(
      children: [
        Row(
          children: [
            Expanded(flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,top: 8,bottom: 8),
                    child: Container(height: 30,
                      child: Row(
                      children: [
                        Spacer(),
                        Text('Copy'),
                        Spacer(),
                        VerticalDivider(),
                        Spacer(),
                         Text('Excel'),Spacer(),
                        VerticalDivider(),Spacer(),
                         Text('CSV'),Spacer(),
                        VerticalDivider(),Spacer(),
                        Text('PDF'),
                        Spacer(),
                      ],
                    ),),
                  ),
                ),
              ),
            ),
            Expanded(flex: 1,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 30,
                    child: Row(
                      children: [
                        Spacer(),
                        Icon(Icons.filter_list),
                        SizedBox(width: 10,),
                        Text('Filter'),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: (){}, child: Text('Add Diaries +',style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.black),)),
          ],
        ),
        Card(
          child: Container(child: Column(
            children: [
              Row(
                children: [
                  Container(child: Center(child: Text('16')),
                    height: 40,width: 40,decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    
                  )),),
                  SizedBox(width: 10,),
                  Text('Good day'),
                ],
              ),
               Row(
                 children: [
                  SizedBox(width: 50,),
                   Text('Date : 2023-04-28'),
                 ],
               ),
              SizedBox(height: 20,),
              
              Row(
                children: [
                  SizedBox(width: 50,),
                  ElevatedButton(onPressed: (){}, child: Text('Edit'),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){}, child: Text('Delete'),style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white
                  ),),
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),),
        ),
        Card(
          child: Container(child: Column(
            children: [
              Row(
                children: [
                  Container(child: Center(child: Text('6')),
                    height: 40,width: 40,decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    
                  )),),
                  SizedBox(width: 10,),
                  Text('Good day...rainy climate'),
                ],
              ),
               Row(
                 children: [
                  SizedBox(width: 50,),
                   Text('Date : 2023-09-20'),
                 ],
               ),
              SizedBox(height: 20,),
              
              Row(
                children: [
                  SizedBox(width: 50,),
                  ElevatedButton(onPressed: (){}, child: Text('Edit'),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){}, child: Text('Delete'),style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white
                  ),),
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),),
        ),

        
      ],
    ),);
  }
}