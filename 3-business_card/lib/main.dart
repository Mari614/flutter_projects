import 'package:flutter/material.dart';

 void main(){
  runApp(BusinessCardApp());

 }

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 36, 72, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 115,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage('images/zoro.jpg'),
                  ),
                ),
                Text(
                  'Rononoa Zoro',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'Vice Captain Of Strawhat Pirates',
                  style: TextStyle(
                    color: Color(0xFF6C8090),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  color: Color(0xFF6C8090),
                  thickness: 2,
                  indent: 60,
                  endIndent: 60,
                ),

                Card(
                  margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 8), 
                  child: ListTile(
                    leading:Icon(
                            Icons.bolt,
                            size: 32,
                            color: Color(0xFF2B475E),

                          ),
                          title:Text(
                            'One-Sword Style',
                            style:TextStyle(fontSize: 24),
                          ) ,
                    
                  ),

                ),
        

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 16 , vertical: 8),      //same as pading bs de mn gwa we pading mn para
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 65,
                    child: Row(
                      children: [
                        // Spacer(flex: 1),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Icon(
                            Icons.bolt,
                            size: 32,
                            color: Color(0xFF2B475E),

                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Three-Swords Style',
                            style:TextStyle(fontSize: 24),
                          ),
                        ),
                        
                     
                     ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16 , vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 65,
                    child: Row(
                      children: [
                        // Spacer(flex: 1),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.attach_money,
                            size: 32,
                            color: Color(0xFF2B475E),

                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            '1,111,000,000 Berries',
                            style:TextStyle(fontSize: 24),
                          ),
                        ),
                     
                     ],
                    ),
                  ),
                ),
          
        ],),

      // ignore: dead_code
      ),
    );
  }
}