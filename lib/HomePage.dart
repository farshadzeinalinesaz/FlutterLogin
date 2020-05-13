import 'package:flutter/material.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Home Page'),
       ),
       body: Center(child: Text('Welcome'),),
       floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){}),
     ),
   );
  }
}