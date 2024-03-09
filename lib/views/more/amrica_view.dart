import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class AmricaView extends StatelessWidget implements GenericView {
  const AmricaView({super.key});

  @override
  String get title => 'أمريكا';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Amrica View'),
      ),
    );
  }
}
