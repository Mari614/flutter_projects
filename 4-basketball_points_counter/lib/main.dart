import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounterApp());
}

class PointsCounterApp extends StatefulWidget {
  @override
  State<PointsCounterApp> createState() => _PointsCounterAppState();
}

class _PointsCounterAppState extends State<PointsCounterApp> {
  int teamApoints = 0;

  int teamBpoints = 0;

  void addOnePoint() {
    print('add one point');
  }

  void addTwoPoint() {
    print('add two point');
  }

  void addThreePoint() {
    print('add three point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Points Counter'),
          
        ),
        body: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 
            Row(
              
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$teamApoints',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: (){
                        
                        setState(() {
                          teamApoints++;
                        });
                        print(teamApoints);
                      }, 
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        ),
                        ),
                        
                        ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: (){
                        
                        setState(() {
                          teamApoints= teamApoints+2;
                        });
                        print(teamApoints);
                      },
                       child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        ),
                        ),
                       
                        ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: (){
                         
                         setState(() {
                           teamApoints= teamApoints+3;
                         });
                        print(teamApoints);
                      }, 
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        ),
                        ),
                        
                  ],
                  ),
                ),
              
              Container(
                height: 500,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
               Container(
                height: 500,
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: (){
                        
                        setState(() {
                          teamBpoints++;
                        });
                        print(teamBpoints);
                      }, 
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        ),
                        ),
                       
                        ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: (){
                         
                         setState(() {
                           teamBpoints= teamBpoints+2;
                         });
                        print(teamBpoints);
                      }, 
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        ),
                        ),
                     
                        ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          teamBpoints= teamBpoints+3;
                        });
                        print(teamBpoints);
                      }, 
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        ),
                        ),
                        
                  ],
                  ),
               ),
             
              ],
            ),
          ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: (){
                      setState(() {
                        teamApoints = 0;
                        teamBpoints = 0;
                      });
                    },
                     child: Text(
                      'Reset',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      ),
                      ),
          ],
        ),

      ),
    );
  }
}
