import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class HegrahView extends StatelessWidget implements GenericView {
  const HegrahView({super.key});

  @override
  String get title => 'هجرة';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Hegrah View'),
      ),
    );
  }
}
