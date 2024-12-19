import 'package:flutter/material.dart';
import 'package:myproject/Assignedleave.dart';
import 'package:myproject/eighthsubject.dart';
import 'package:myproject/leaveapply.dart';
import 'package:myproject/sixthdiary.dart';

class Eleventhleave extends StatefulWidget {
  const Eleventhleave({super.key});

  @override
  State<Eleventhleave> createState() => _EleventhleaveState();
}

class _EleventhleaveState extends State<Eleventhleave> with TickerProviderStateMixin  {
   late TabController _tabController;  
  String _appBarTitle = 'Assigned Leave';  
  @override  
  void initState() {  
   super.initState();  
   _tabController = TabController(length: 2, vsync: this);  
   _tabController.addListener(() {  
    setState(() {  
      switch (_tabController.index) {  
       case 0:  
        _appBarTitle = 'Assigned Leave';  
        break;  
       case 1:  
        _appBarTitle = 'Leave';  
        break;  
      
      }  
    });  
   });  
  }  
  
  @override  
  void dispose() {  
   _tabController.dispose();  
   super.dispose();  
  } 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(appBar: AppBar(leading: IconButton(onPressed: (){
      Navigator.of(context).pop();
    }, icon: Icon(Icons.arrow_back)),
    title: Text(_appBarTitle,style: TextStyle(fontSize: 18),),
    actions: [
      Icon(Icons.search),
      SizedBox(width: 20,),
      Icon(Icons.messenger_outline),SizedBox(width: 10,),
    ]
     ,
     
        bottom:TabBar(labelColor: Colors.white,unselectedLabelColor: Colors.white,indicatorColor: Colors.white,
           controller: _tabController, 
          tabs: [Tab(text: 'Assigned Leave',),
      Tab(text: 'Leave Apply',)])),
      body: TabBarView( controller: _tabController, 
        children: [Assignedleave(),
      Leaveapply()]),),
    );
  }
}