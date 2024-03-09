import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class SiyasahView extends StatelessWidget implements GenericView {
  const SiyasahView({super.key});

  @override
  String get title => 'سياسة';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Siyasah View'),
      ),
    );
  }
}
