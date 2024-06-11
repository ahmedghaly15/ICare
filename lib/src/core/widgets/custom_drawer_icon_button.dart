import 'package:flutter/material.dart';
import 'package:icare/src/core/helpers/extensions.dart';

class CustomDrawerIconButton extends StatelessWidget {
  const CustomDrawerIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Scaffold.of(context).openDrawer(),
      icon: Icon(
        Icons.menu,
        color: context.isDarkModeActive ? Colors.white : Colors.black,
      ),
    );
  }
}
