import 'package:flutter/material.dart';

class CustomBottomIcon extends StatelessWidget {
  final bool isPressed;
  final IconData icon;
  final Function() onTap;
  const CustomBottomIcon({
    super.key,
    required this.isPressed,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(icon, size: 28),
          onPressed: onTap,
        ),
        Visibility(
          visible: isPressed,
          child: Positioned(
            bottom: -0.5,
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
