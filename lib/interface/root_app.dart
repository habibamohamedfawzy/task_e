import 'package:flutter/material.dart';
import 'package:task_e/interface/clip_path2.dart';
import 'package:task_e/interface/master_painter.dart';
import 'package:task_e/interface/my_container.dart';
import 'package:task_e/interface/pic_container.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffFAF9F6),
        body: Stack(
          children: [
            // Custom Clipping Path 1
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                width: 500,
                height: 400,
                color: Color(0xffE0FFFF),
              ),
            ),
            // Custom Clipping Path 2
            ClipPath(
              clipper: ClipPath2(),
              child: Container(
                width: 500,
                height: 400,
                color: Color(0xffE0FFFF),
              ),
            ),
            // Main Content Column
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 70.0,
                          backgroundImage: AssetImage('imgs/download.jpeg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ],
                    ),
                    Text("Mary Smith",style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('imgs/talk.png', height: 25, width: 25),
                        Text(
                          '451-552-878',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyContainer("2", 'Unclaimed', Color(0xff9966CC)),
                    SizedBox(width: 10),
                    MyContainer("\$2880", 'Monthly Earn', Color(0xff32174D)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      'Action Required',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Color(0xff32174D),
                      child: SizedBox(
                        height: 20.0,
                        width: 20.0,
                        child: Text(
                          '18',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 360,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      child: Row(
                        children: [
                          Image.asset('imgs/checkmark.png', height: 50, width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Verify Art Portfolio',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  SizedBox(width: 160,),
                                  Text(
                                    '1hr',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'New art picco protfolio requires your verification',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [

                    Text(
                      'Gallery',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.grey,

                      ),
                    ),
                  ],
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [

                   PicContainer('imgs/art1.jpeg',"Slouching towards","oil spray point"),

                   PicContainer('imgs/images.jpeg',"King Grin","oil on canvas"),
                 ],
               )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
