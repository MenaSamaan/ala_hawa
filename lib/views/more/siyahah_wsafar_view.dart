import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class SiyahahWsafarView extends StatelessWidget implements GenericView {
  const SiyahahWsafarView({super.key});

  @override
  String get title => 'سياحة وسفر';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Siyahah Wsafar View'),
      ),
    );
  }
}
