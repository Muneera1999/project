import 'package:flutter/material.dart';

class Eighthsubject extends StatefulWidget {
  const Eighthsubject({super.key});

  @override
  State<Eighthsubject> createState() => _EighthsubjectState();
}

class _EighthsubjectState extends State<Eighthsubject> {
  List<String>sub =['Mathematics',
  'Physics'];
  List<String>tutor =['Anil V K, K Sarath, Muhammed P K',
  'Anil V K'];
  List<String>author =['Pythagoras',
  'Isacc Newton'];
  List<String>pm =['15',
  '24'];
  List<String>fm =['50',
  '80'];
  List<String>code =['101',
  '121'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: IconButton(onPressed: (){
      Navigator.of(context).pop();
    }, icon: Icon(Icons.arrow_back)),
    title: Text('Subject',style: TextStyle(fontSize: 18),),
    actions: [
      Icon(Icons.search),
      SizedBox(width: 20,),
      Icon(Icons.messenger_outline),SizedBox(width: 10,),
    ]),
    body:  Column(
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
       Expanded(
         child: Padding(
           padding: const EdgeInsets.all(15),
           child: ListView.builder(
            itemCount: code.length,
            itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Class : 4 A'),
                    ),
                    Spacer(),
                    Text('Subject Code : ${code[index]}')
                  ],
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(width: double.infinity,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Subject Name'),
                          Text(sub[index],style: TextStyle(fontWeight: FontWeight.w700)),
                          SizedBox(height: 15,),
                          Text('Teacher'),
                          Text(tutor[index],style: TextStyle(fontWeight: FontWeight.w700)),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Text('Subject Author :'),
                              Text('${author[index]}',style: TextStyle(fontWeight: FontWeight.w700))
                            ],
                          ),
                          
                          Row(
                            children: [
                              Text('Pass Mark :'),
                              Text('${pm[index]}',style: TextStyle(fontWeight: FontWeight.w700),)
                            ],
                          ),
                          Row(
                            children: [
                              Text('Final Mark :'),
                              Text('${fm[index]}',style: TextStyle(fontWeight: FontWeight.w700))
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text('Note :',style: TextStyle( decoration: TextDecoration.underline,),)
                        ],
                      ),),
                  ),
                )
              ],
            );
           }),
         ),
       )
      ],
    ),);
  }
}