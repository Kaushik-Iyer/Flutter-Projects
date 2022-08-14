import 'package:flutter/material.dart';
import 'constants.dart';


class insideCard extends StatelessWidget {
  insideCard({@required this.name,@required this.icon});
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Icon(icon,
            size:80.0,
          ),
          SizedBox(
              height:15.0
          ),
          Text(name,style:TextStyle(
            fontSize:18.0,
            color:Color(0xFF8D8E98),
          ),
          ),
        ]
    );
  }
}