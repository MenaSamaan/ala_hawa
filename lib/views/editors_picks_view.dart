import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class EditorsPicksView extends StatelessWidget implements GenericView {
  const EditorsPicksView({super.key});

  @override
  String get title => "Editor's Picks";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text("Editor's Picks View"),
      ),
    );
  }
}
