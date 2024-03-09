import 'package:flutter/material.dart';

class RssFeedLoading extends StatelessWidget {
  const RssFeedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('', style: TextStyle(fontSize: 64)),
        Text(
          'Loading Feed',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
