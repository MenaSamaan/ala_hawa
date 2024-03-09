import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class EqtesadView extends StatelessWidget implements GenericView {
  const EqtesadView({super.key});

  @override
  String get title => 'اقتصاد';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Eqtesad View'),
      ),
    );
  }
}
