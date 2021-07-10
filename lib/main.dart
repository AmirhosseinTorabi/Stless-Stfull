import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(Counter());
}
class Counter extends StatefulWidget {
  const Counter({Key key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter=0;
  Color color=Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          title: Text("Counter",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black),),
          centerTitle: true,
          actions: [
            IconButton(icon: Icon(Icons.clear), onPressed: (){
              setState(() {
                counter=0;
                color=Colors.white;
              });
            }
            )
          ],
        ),
        body: Center(
          child: Text("$counter Number",style: TextStyle(color: color,fontSize: 45,fontWeight: FontWeight.bold),),

        ),
        floatingActionButton:FloatingActionButton(onPressed: (){
          setState(() {
            ++counter;
            final random =Random();
            color=Color.fromRGBO(random.nextInt(244), random.nextInt(244), random.nextInt(244), 1);
          });

        },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
