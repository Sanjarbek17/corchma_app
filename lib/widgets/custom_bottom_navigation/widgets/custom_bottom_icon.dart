import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomIcon extends StatelessWidget {
  final bool isPressed;
  final SvgPicture image;
  final Function() onTap;
  const CustomBottomIcon({
    super.key,
    required this.isPressed,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          iconSize: 28,
          icon: image,
          onPressed: onTap,
        ),
        Visibility(
          visible: isPressed,
          child: Positioned(
            bottom: 0,
            left: 20,
            child: Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
