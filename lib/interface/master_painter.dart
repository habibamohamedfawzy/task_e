import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    double w=size.width;
    double h=size.height;

    Path path_0 = Path();
    path_0.moveTo(size.width*0.0006167,size.height*0.4993429);
    path_0.quadraticBezierTo(size.width*0.2316500,size.height*0.4971143,size.width*0.2826667,size.height*0.6677143);
    path_0.quadraticBezierTo(size.width*0.2068000,size.height*0.8237857,size.width*-0.0004583,size.height*0.8507286);

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
