import 'package:ala_hawa/assets/post_card.dart';
import 'package:ala_hawa/rss_feed/rss_feed.dart';
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
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        clipBehavior: Clip.none,
        child: ListView.builder(
          itemCount: rssFeed.rssFeedItems.length,
          itemBuilder: (context, index) {
            final rssFeedItem = rssFeed.rssFeedItems[index];

            return RssFeedCard(rssFeedItem: rssFeedItem);
          },
        ),
      ),
    );
  }
}
