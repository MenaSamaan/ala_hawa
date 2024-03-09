import 'package:flutter/material.dart';

class CustomBottomNavbarItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const CustomBottomNavbarItem({
    super.key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? Colors.white : Colors.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            height: .1,
            color: selected ? Colors.white : Colors.grey,
          ),
        ),
      ],
    );
  }
}
