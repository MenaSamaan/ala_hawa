import 'package:flutter/material.dart';

class CustomMoreMenuItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomMoreMenuItem({
    super.key,
    required this.text,
    required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: 25,
            color: Colors.white,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            height: .1,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
