import 'package:flutter/cupertino.dart';

class ClipPath2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    double w=size.width;
    double h=size.height;

    Path path_0 = Path();
    path_0.moveTo(size.width*0.8375000,size.height*0.0042857);
    path_0.lineTo(size.width*0.8346667,size.height*0.0051429);
    path_0.quadraticBezierTo(size.width*0.6902083,size.height*0.1557143,size.width*0.7118333,size.height*0.1982857);
    path_0.quadraticBezierTo(size.width*0.7844583,size.height*0.2761429,size.width*1.0023333,size.height*0.2925714);
    path_0.lineTo(size.width*1.0001667,size.height*0.0025714);

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}