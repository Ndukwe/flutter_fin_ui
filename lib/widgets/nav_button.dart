import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  const NavButton(
      {Key? key,
      required this.iconData,
      required this.onPressed,
      this.selected = false})
      : super(key: key);
  final VoidCallback onPressed;
  final IconData iconData;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(iconData, color: selected ? Colors.black : Colors.black45),
    );
  }
}
