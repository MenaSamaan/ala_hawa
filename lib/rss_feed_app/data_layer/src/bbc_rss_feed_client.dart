import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

class RssRequestFailure implements Exception {}

class BbcRssFeedClient {
  BbcRssFeedClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  static const _baseRssFeedUrl =
      'http://feeds.bbci.co.uk/news/world/middle_east/rss.xml';

  Future<RssFeed> getFeed() async {
    final rssFeedResponse = await _httpClient.get(Uri.parse(_baseRssFeedUrl));

    if (rssFeedResponse.statusCode == 200) {
      final decoded = utf8.decode(rssFeedResponse.bodyBytes);
      final feed = RssFeed.parse(decoded);
      return feed;
    } else {
      throw RssRequestFailure();
    }
  }
}
