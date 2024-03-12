import 'package:ala_hawa/assets/rss_feed_card.dart';
import 'package:ala_hawa/rss_feed_app/business_logic_layer/business_logic_layer.dart';
import 'package:flutter/material.dart';

class RssFeedPopulated extends StatelessWidget {
  final RssFeed rssFeed;
  final ValueGetter<Future<void>> onRefresh;

  const RssFeedPopulated({
    required this.rssFeed,
    required this.onRefresh,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        clipBehavior: Clip.none,
        itemCount: rssFeed.rssFeedItems.length,
        itemBuilder: (context, index) {
          final rssFeedItem = rssFeed.rssFeedItems[index];
          return RssFeedCard(rssFeedItem: rssFeedItem);
        },
      ),
    );
  }
}
