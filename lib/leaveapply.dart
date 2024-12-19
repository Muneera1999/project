import 'package:flutter/material.dart';

class Leaveapply extends StatefulWidget {
  const Leaveapply({super.key});

  @override
  State<Leaveapply> createState() => _LeaveapplyState();
}

class _LeaveapplyState extends State<Leaveapply> {
  TextEditingController  cstartingdate =TextEditingController();
  DateTime dateoftoday = DateTime.now();
  DateTime firstDate = DateTime(2024);
  DateTime lastDate = DateTime(2027);
   TextEditingController  cenddate =TextEditingController();
    TextEditingController  cendtime =TextEditingController();
     TextEditingController  cstartingtime =TextEditingController();
     TimeOfDay initialTime = TimeOfDay.now();
     
  var width,size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;
    return Scaffold(body:Column(
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
                        ),
                        ),
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
                ),
                
              ],
         ),
         Padding(
           padding: const EdgeInsets.all(12.0),
           child: Row(
             children: [
               Text('Date : 2023-10-09'),
               Spacer(),
               Text('Status : '),
               Container(height: 25,
                 child: ElevatedButton(onPressed: (){}, child: Text('Pending'), style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
               )
             ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Card(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(child: Column(
                 children: [
                   Row(
                     children: [
                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Applicant Name'),
                           Text('Izaan Haris',style: TextStyle(fontWeight: FontWeight.w700),),
                           SizedBox(height: 20,),
                           Text('Schedule'),
                           Text('Thu-Apr-2021',style: TextStyle(fontWeight: FontWeight.w700),)
                         ],
                       ),
                       Spacer(),
                       Container(height: 100,
                        child: VerticalDivider(color: Colors.grey,thickness: 1,)),
                        Spacer(),
                       Column(crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Category'),
                            Text('Casual',style: TextStyle(fontWeight: FontWeight.w700),),
                           SizedBox(height: 20,),
                           Text('Days'),
                           Text('1',style: TextStyle(fontWeight: FontWeight.w700),)
                         ],
                       )
                     ],
                   ),
                   Row(mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('Reason'),
                     ],
                   ),Row(mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('for api testing',style: TextStyle(fontWeight: FontWeight.w700),),
                     ],
                   )
              ,  SizedBox(height: 20,),Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Attachment'),
                ],
              ) ,
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(height: 20,width: 70,decoration: BoxDecoration(color: const Color.fromARGB(255, 94, 92, 92),
                    borderRadius: BorderRadius.circular(5)),),
                ],
              ),
              Divider(color: Colors.black,),
              SizedBox(height: 15,),
              Row(children: [ElevatedButton(onPressed: (){}, child: Text('Edit'), 
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
                     SizedBox(width: 10,), ElevatedButton(onPressed: (){}, child: Text('Delete'), style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),],)],
              
               ),),
             ),
           ),
         )
      ],
    ) ,floatingActionButton: Container(  
       width: double.infinity,  
       child: Align(  
        alignment: Alignment.bottomCenter,  
        child: Padding(  
          padding: const EdgeInsets.only(bottom: 10),  
          child: Container(height: 40,width: width*.9,
            child: ElevatedButton(  style: ElevatedButton.styleFrom(backgroundColor: Colors.red
            ,foregroundColor: Colors.white,
            ),
             onPressed: () {showDialog(context: context, builder: (BuildContext){
              return AlertDialog(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                title: Row(
                children: [
                  Text('Leave Application',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
             Spacer(),  Icon(Icons.close) ],
              ),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(decoration: InputDecoration(labelText: 'Annual',suffixIcon: Icon(Icons.expand_more_outlined),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),
                    SizedBox(height: 10,),
                  TextField(controller: cstartingdate,
                    decoration: InputDecoration(labelText: 'Starting Date',suffixIcon: IconButton(onPressed: (){startingdate(context);}, icon: Icon(Icons.calendar_month_outlined)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),
                    SizedBox(height: 10,),
                  TextField(controller: cstartingtime,
                    decoration: InputDecoration(labelText: 'Starting Time',suffixIcon: IconButton(onPressed: (){startingtime(BuildContext);}, icon:  Icon(Icons.access_time_outlined),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),
                    SizedBox(height: 10,),
                  TextField(controller: cenddate,
                    decoration: InputDecoration(labelText: 'End Date',suffixIcon: IconButton(onPressed: (){enddate(context);}, icon: Icon(Icons.calendar_month_outlined)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),
                    SizedBox(height: 10,),
                  TextField(controller: cendtime,
                    decoration: InputDecoration(labelText: 'End Time',suffixIcon:IconButton(onPressed: (){endtime(BuildContext);}, icon:  Icon(Icons.access_time_outlined),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),
                    SizedBox(height: 10,),
                  TextField( minLines: 5, // Set the minimum number of lines  
                  maxLines: 10,
                    decoration: InputDecoration(alignLabelWithHint: true,
                      labelText: 'Reason',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),
                    SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                    labelText: 'Attachmet',suffixIcon: Icon(Icons.attach_file_outlined),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),
                SizedBox(height: 15,), 
                ElevatedButton(onPressed: (){}, child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                 ),) ],
                ),
              ),
              );
             });},  
             child: Text('Add a Leave Applicaion',style: TextStyle(fontSize: 18),),  
            ),
          ),  
        ),  
       ),  
      ),  
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, );
  }
   Future startingdate(BuildContext context) async{
      var date = await showDatePicker(context: context,
      initialDate:  dateoftoday,
       firstDate: firstDate, lastDate: lastDate);
       if(date != null){
        setState(() {
          final day = date.day.toString().padLeft(2,'0');
          final month = date.month.toString().padLeft(2,'0');
          final year = date.year.toString();
          final todaysdate = '$day/$month/$year';
          cstartingdate.text =todaysdate;
        });
       }
    }
    Future enddate(BuildContext context) async{
      var date = await showDatePicker(context: context,
      initialDate:  dateoftoday,
       firstDate: firstDate, lastDate: lastDate);
       if(date != null){
        setState(() {
          final day = date.day.toString().padLeft(2,'0');
          final month = date.month.toString().padLeft(2,'0');
          final year = date.year.toString();
          final todaysdate = '$day/$month/$year';
          cenddate.text =todaysdate;
        });
       }
    }
    Future startingtime(BuildContext)async{
      var time = await showTimePicker(context: context, initialTime: initialTime);
      if(time!= null){
        cstartingtime.text = '${time.hour} : ${time.minute}';
      }
    } Future endtime(BuildContext)async{
      var time = await showTimePicker(context: context, initialTime: initialTime);
      if(time!= null){
        cendtime.text = '${time.hour} : ${time.minute}';
      }
    }
}