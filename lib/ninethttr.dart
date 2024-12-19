import 'package:flutter/material.dart';
import 'package:myproject/ninethtimetable.dart';

class Ninethttr extends StatefulWidget {
  const Ninethttr({super.key});

  @override
  State<Ninethttr> createState() => _NinethttrState();
}

class _NinethttrState extends State<Ninethttr> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {  
   super.initState();  
   _tabController = TabController(length: 6, vsync: this);  
  }  
  
  @override  
  void dispose() {  
   _tabController.dispose();  
   super.dispose();  
  }  
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: GestureDetector(onTap: (){Navigator.of(context).pop();},
      child: Icon(Icons.arrow_back)),title: Text('Time Table Report',style: TextStyle(fontSize: 18)),
    actions: [
     
      Icon(Icons.messenger_outline),SizedBox(width: 10,),
    ],),
      body:  Column(  
      children: [  
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Card(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
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
       TabBar(  labelColor: Colors.red,
        isScrollable: true,
        indicator: BoxDecoration(  
   border: Border.all(color: Colors.transparent),  
  ),  
        controller: _tabController,  
        tabs: [  
          Tab(text: 'Monday',), 
          Tab(text: 'Tuesday',), 
          Tab(text: 'Wednesday',), 
          Tab(text: 'Thursday',), 
          Tab(text: 'Friday',), 
          Tab(text: 'Saturday',)
          
        ],  
       ),  
       Expanded(  
        child: TabBarView(  
          
          controller: _tabController,  
          children: [  
           Center(child: Text('Tab 1 content')),  
          Center(child: Text('Tab 2 content')),  
           Center(child: Text('Tab 3 content')),  
           Ninethtimetable(),
           Center(child: Text('Tab 5 content')),  
           Center(child: Text('Tab 6 content')),  
          ],  
        ),  
       ),  
      ],  
    ),  );
  }
}