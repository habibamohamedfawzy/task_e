import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PicContainer extends StatelessWidget {
  final String img;
  final String text1;
  final String text2;

  PicContainer(this.img, this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Container(
          width: 150,
          height: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect( // This widget clips the image with rounded corners
                borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
                child: Image.asset(
                  img,
                  height: 60,
                  width: 80,
                  fit: BoxFit.cover, // Adjusts the image to cover the area while maintaining its aspect ratio
                ),
              ),
              SizedBox(height: 8),
              Text(
                text1,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xff32174D),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
