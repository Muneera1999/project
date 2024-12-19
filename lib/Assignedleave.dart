import 'package:flutter/material.dart';

class Assignedleave extends StatefulWidget {
  const Assignedleave({super.key});

  @override
  State<Assignedleave> createState() => _AssignedleaveState();
}

class _AssignedleaveState extends State<Assignedleave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  Column(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Annual'),
                        Spacer(),
                        Text('15 Days')
                      ],
                    ),
                  ),),
                ),
              ),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Onam'),
                        Spacer(),
                        Text('5 Days')
                      ],
                    ),
                  ),),
                ),
              ),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Casual'),
                        Spacer(),
                        Text('8 Days')
                      ],
                    ),
                  ),),
                ),
              ),
            )
      ],
    ),);
  }
}