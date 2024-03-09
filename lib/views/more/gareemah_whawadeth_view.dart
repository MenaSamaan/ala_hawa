import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class GareemahWhawadethView extends StatelessWidget implements GenericView {
  const GareemahWhawadethView({super.key});

  @override
  String get title => 'جريمة وحوادث';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Gareemah Whawadeth View'),
      ),
    );
  }
}
