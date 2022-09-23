import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
  HelloWorldApp()
  );

}

class HelloWorldApp extends StatelessWidget {


   HelloWorldApp();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          
        },),
        appBar: AppBar(
          title: Text('Santorio'),
        ),
        body: Column(

        children: [
          Container(
          height: 60,
          width: 100, 
          color: Color.fromARGB(127, 79, 17, 127),
          child: Center(
            child: Text('Santorio'),
            ),
            ),
            Container(
          height: 60,
          width: 100, 
          color: Color.fromARGB(125, 95, 4, 4),
          child: Center(
            child: Text('Santorio'),
            ),
            ),
            ]
      ),
      ),
    );
  }
}



