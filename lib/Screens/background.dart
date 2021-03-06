import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -175,
            right: -165,
            child: Image.asset(
              "assets/images/top.png",
              width: size.width * 1.1,
            ),
          ),
          Positioned(
            bottom: -185,
            left: -85,
            child: Image.asset(
              "assets/images/bottom.png",
              width: size.width * 1.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}