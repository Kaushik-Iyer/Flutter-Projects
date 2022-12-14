
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            CircleAvatar(
              radius:50.0,
              backgroundColor: Colors.red,
              foregroundImage: AssetImage('images/kaushik.jpg'),
            ),
            Text(
              'Kaushik Iyer',
              style:TextStyle(
                fontFamily:'KaushanScript',
                fontSize: 40.0,
                color:Colors.white,
                fontWeight:FontWeight.bold,
              ),
            ),
            Text(
              'Flutter developer',
                  style:TextStyle(
                fontFamily:'Lusitana',
                color:Colors.teal.shade100,
                fontSize:20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
            )
            ),
            SizedBox(height:20.0,
            width:150.0,
            child:Divider(
              color:Colors.teal.shade100,
            ),
            ),
            Card(
              color:Colors.white,
              margin:EdgeInsets.symmetric(vertical:10.0,horizontal:25.0),
              child:ListTile(
                leading:Icon(Icons.phone,
                  color:Colors.teal.shade900,
                ),
                title:Text('+91 7045029282',
                  style:TextStyle(
                    color:Colors.teal.shade900,
                    fontFamily:'KaushanScript',
                    fontSize:20.0,
                  ),
                ),
              ),
            ),
            Card(
              color:Colors.white,
              margin: EdgeInsets.symmetric(vertical:10.0,horizontal:25.0),
              child:ListTile(
                leading:Icon(Icons.email,
                    color:Colors.teal.shade900),
                title:Text('kushlaser@gmail.com',
                  style:TextStyle(
                    color:Colors.teal.shade900,
                    fontFamily:'KaushanScript',
                    fontSize:20.0,
                  ),
                ),
              )
            )
          ],
        ),
        ),
      ),
    );
  }
}

