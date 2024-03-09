import 'package:ala_hawa/rss_feed/view/rss_feed_view.dart';
import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';

class FeaturedView extends StatelessWidget implements GenericView {
  const FeaturedView({super.key});

  @override
  String get title => 'Featured';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: RssFeedView(),
    );
  }
}
