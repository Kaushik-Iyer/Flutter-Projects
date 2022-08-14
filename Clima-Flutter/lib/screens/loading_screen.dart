import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void initState(){
    super.initState();
    get_location();
  }

  void get_location() async
  {
    try
    {
      Position position=await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
      getData();
    }
    catch(e)
    {
      print(e);
    }
  }
  
  void getData()async{
    Response response=await get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}'));
    if (response.statusCode==200)
      {
        String data=response.body;
      }
    else
      {
        print(response.statusCode);
      }
    print(response.body);

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
