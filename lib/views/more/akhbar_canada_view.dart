import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class AkhbarCanadaView extends StatelessWidget implements GenericView {
  const AkhbarCanadaView({super.key});

  @override
  String get title => 'أخبار كندا';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Akhbar Canada View'),
      ),
    );
  }
}
