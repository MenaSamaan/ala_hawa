import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class TrendingView extends StatelessWidget implements GenericView {
  const TrendingView({super.key});

  @override
  String get title => 'Trending';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Trending View'),
      ),
    );
  }
}
