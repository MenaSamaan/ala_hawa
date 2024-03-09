import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class RiyadahView extends StatelessWidget implements GenericView {
  const RiyadahView({super.key});

  @override
  String get title => 'رياضة';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Riyadah View'),
      ),
    );
  }
}
