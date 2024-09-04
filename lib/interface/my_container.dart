import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_e/interface/clip_path3.dart';
import 'package:task_e/interface/clip_path4.dart';

class MyContainer extends StatelessWidget {
  String text1;
  String text2;
  Color color;

  MyContainer(this.text1, this.text2, this.color);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 120,
            height: 100,

            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),


            ),


          Column(
            children: [
              Text(text1, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,fontSize:15),
              ), Text(text2, style: TextStyle(color: Colors.white,fontSize: 15,),
              )
            ],
          )
        ]);
  }
}