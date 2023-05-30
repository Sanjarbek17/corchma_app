import 'package:corchma_app/providers/bottom_navigation_provider.dart';
import 'package:corchma_app/screens/main_screen/widgets/custom_bottom_navigation/widgets/custom_bottom_icon.dart';
import 'package:corchma_app/source/figma_custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomBottomIcon(
              image: FigmaIcons.menu,
              isPressed: navigationProvider.currentIndex == 0,
              onTap: () {
                navigationProvider.changeIndex(0);
              }),
          CustomBottomIcon(
              image: FigmaIcons.menuspec,
              isPressed: navigationProvider.currentIndex == 1,
              onTap: () {
                navigationProvider.changeIndex(1);
              }),
          CustomBottomIcon(
              image: FigmaIcons.map,
              isPressed: navigationProvider.currentIndex == 2,
              onTap: () {
                navigationProvider.changeIndex(2);
              }),
          Stack(children: [
            CustomBottomIcon(
                image: FigmaIcons.action,
                isPressed: navigationProvider.currentIndex == 3,
                onTap: () {
                  navigationProvider.changeIndex(3);
                }),
            Positioned(
              top: 6,
              right: 7,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 178, 56, 21),
                ),
                child: const Center(
                  child: Text(
                    '5',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ),
          ]),
          CustomBottomIcon(
              image: FigmaIcons.user,
              isPressed: navigationProvider.currentIndex == 4,
              onTap: () {
                navigationProvider.changeIndex(4);
              }),
        ],
      ),
    );
  }
}
