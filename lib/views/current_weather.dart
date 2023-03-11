

import 'package:flutter/material.dart';

Widget currentWeather(AssetImage icon, String temp, String location){
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIcon(icon,
        size: 64.0,),
        SizedBox(
          height: 10.0, 
        ),
        Text("$temp°C",style: TextStyle(fontSize:46.0 ),),
        SizedBox(height: 10,),
        Text("$location", style: TextStyle(fontSize: 18.0,color: Color(0xFF5a5a5a)),),
      ],
    ),
  );
}