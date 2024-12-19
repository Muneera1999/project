
import 'package:flutter/material.dart';

class IndexedStackExample extends StatefulWidget {
  @override
  _IndexedStackExampleState createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  // Index to control which child to display
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack Example'),
      ),
      body: Column(
        children: [
          // Buttons to switch between children
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Show the first child
                    _currentIndex = 0; 
                  });
                },
                child: Text('Child 1'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Show the second child
                    _currentIndex = 1; 
                  });
                },
                child: Text('Child 2'),
              ),
            ],
          ),
          SizedBox(height: 20),
          // IndexedStack to display children
          IndexedStack(
            // Index of the child to display
            index: _currentIndex, 
            children: [
              // Child 1
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Child 1',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Child 2
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Child 2',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
