import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class WatchView extends StatelessWidget implements GenericView {
  const WatchView({super.key});

  @override
  String get title => 'Watch';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Watch View'),
      ),
    );
  }
}
