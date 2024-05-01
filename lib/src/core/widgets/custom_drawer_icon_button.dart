import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

class CustomDrawerIconButton extends StatelessWidget {
  const CustomDrawerIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Scaffold.of(context).openDrawer(),
      icon: Icon(
        Icons.menu,
        color: isDarkModeActive(context) ? Colors.white : Colors.black,
      ),
    );
  }
}
