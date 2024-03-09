import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class DawliView extends StatelessWidget implements GenericView {
  const DawliView({super.key});

  @override
  String get title => 'دولي';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Dawli View'),
      ),
    );
  }
}
