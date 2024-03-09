import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class MonaweatView extends StatelessWidget implements GenericView {
  const MonaweatView({super.key});

  @override
  String get title => 'منوعات';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Monaweat View'),
      ),
    );
  }
}
