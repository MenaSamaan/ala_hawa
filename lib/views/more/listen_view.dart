import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class ListenView extends StatelessWidget implements GenericView {
  const ListenView({super.key});

  @override
  String get title => 'Listen';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Listen View'),
      ),
    );
  }
}
