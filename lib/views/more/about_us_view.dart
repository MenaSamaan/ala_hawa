import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget implements GenericView {
  const AboutUsView({super.key});

  @override
  String get title => 'من نحن';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('About Us View'),
      ),
    );
  }
}
