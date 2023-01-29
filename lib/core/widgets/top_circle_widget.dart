import 'package:flutter/material.dart';
import 'package:super_clean_app/core/utils/colors_manager.dart';

class TopCircleWidget extends StatelessWidget {
  const TopCircleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        color: Colors.white24,
        child: ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.30,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: const BoxDecoration(
              color: ColorManager.primary,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 20.0;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(50, size.height, 20, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
