import 'package:corchma_app/screens/main_screen/subdir/widgets/custom_bottom_navigation/widgets/custom_bottom_icon.dart';
import 'package:corchma_app/source/figma_custom_icons.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 51, 51, 51),
          // spreadRadius: 7,
          blurRadius: 2,
          blurStyle: BlurStyle.outer,
          // offset: const Offset(0, 3), // changes position of shadow
        ),
      ]),
      height: 60.0,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomBottomIcon(icon: FigmaIcons.menu, isPressed: true),
          CustomBottomIcon(icon: FigmaIcons.menu, isPressed: false),
          CustomBottomIcon(icon: FigmaIcons.menu, isPressed: true),
          CustomBottomIcon(icon: FigmaIcons.menu, isPressed: true),
          CustomBottomIcon(icon: FigmaIcons.menu, isPressed: true),
        ],
      ),
    );
  }
}
