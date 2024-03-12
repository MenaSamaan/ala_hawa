import 'dart:async';
import 'package:ala_hawa/rss_feed_app/data_layer/data_layer.dart';
import 'package:ala_hawa/rss_feed_app/repository_layer/repository_layer.dart';
import 'package:webfeed/webfeed.dart';

class RssFeedRepository {
  RssFeedRepository({BbcRssFeedClient? rssFeedClient})
      : _rssFeedClient = rssFeedClient ?? BbcRssFeedClient();

  final BbcRssFeedClient _rssFeedClient;
  late RssFeed _rssFeed;

  Future<void> initializeFeed() async {
    _rssFeed = await _rssFeedClient.getFeed();
  }

  List<RssFeedItem> getItems() {
    List<RssFeedItem> rssFeedItems = [];
    for (int i = 0; i < _rssFeed.items!.length; i++) {
      rssFeedItems.add(RssFeedItem.fromRssItem(_rssFeed.items![i]));
    }
    return rssFeedItems;
  }
}
