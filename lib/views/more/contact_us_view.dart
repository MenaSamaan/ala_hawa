import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class ContactUsView extends StatelessWidget implements GenericView {
  const ContactUsView({super.key});

  @override
  String get title => 'أتصل بنا';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Contact Us View'),
      ),
    );
  }
}
