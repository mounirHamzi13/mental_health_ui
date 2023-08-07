import 'dart:ui';

import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  Color? backgroundColor;
  Color? color;
  IconData? icon;
  double padding;
  Image? image;
  CustomIcon(
      {super.key,
      this.color = Colors.white,
      this.backgroundColor = const Color.fromRGBO(191, 190, 190, 0.498),
      this.image,
      this.padding = 8 ,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(padding),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3), // Adjust sigmaX and sigmaY for desired blur intensity
          child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(12),
              child: icon != null
                  ? Icon(
                      icon,
                      size: 30,
                      color: color,
                    )
                  : image),
        ),
      ),
    );
  }
}
