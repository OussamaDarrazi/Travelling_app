
import 'package:flutter/material.dart';

class MyBackground extends StatelessWidget {
  const MyBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFBFF6FF),
                Color(0xFFBFF6FF),
                Color(0xFFFBC8FF),
                Colors.white
    
              ])
          ),
        ),
        Positioned(
          left: -160,
          top: 10,
          child: Container(
            height: 188,
            width: 397,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/bgPlane.png"))
            ),
          ),
        ),
        Positioned(
          right: -120,
          top: 150,
          child: Container(
            height: 188/1.3,
            width: 397/1.3,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/bgCloud.png"))
            ),
          ),
        )
      ],
    );
  }
}
