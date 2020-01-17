import 'package:flutter/material.dart';

void main() => runApp(Counter());
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //For click alert number
  int _increment = 0;
  Color _color;
  void add(){
    setState(() {
     _increment++; 
     //For click alert color 
     switch(_increment){
       case 5:
       _color = Colors.green;
       break;

       case 10:
       _color = Colors.yellow;
       break;

       case 15:
       _color = Colors.red;
       break;

       case 20:
       _color = Colors.teal;
       break;
     }
    });
  
  }
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           backgroundColor: _color,
           title: Text("Apps"),
           centerTitle: true,
         ),
        body: Center(
          child: Text("${_increment}", style: TextStyle(fontSize: 50.0, color: _color),),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () => add(),
          backgroundColor: _color,
          child: Icon(Icons.add),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       ),
    );
  }
}