import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';

class BottomCircleWidget extends StatelessWidget {
  const BottomCircleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        color: ColorManager.primary,
        child: ClipPath(
          clipper: CustomClip(),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.30,
            width: MediaQuery.of(context).size.width * 0.5,
            color: Colors.white24,
          ),
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  var radius = 20.0;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.width);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.width, 20, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
