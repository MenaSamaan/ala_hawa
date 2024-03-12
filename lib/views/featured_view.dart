import 'package:ala_hawa/rss_feed_app/presentation_layer/src/view/rss_feed_view.dart';
import 'package:ala_hawa/assets/rss_feed_card.dart';
import 'package:ala_hawa/rss_feed_app/repository_layer/repository_layer.dart';
import 'package:ala_hawa/utilities/generic_view.dart';
import 'package:flutter/material.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;

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

class RssReader extends StatefulWidget {
  const RssReader({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RssReaderState createState() => _RssReaderState();
}

class _RssReaderState extends State<RssReader> {
  final String rssUrl =
      'http://feeds.bbci.co.uk/news/world/middle_east/rss.xml';
  late RssFeed _feed;

  @override
  void initState() {
    super.initState();
    _fetchFeed();
  }

  Future<void> _fetchFeed() async {
    final response = await http.get(Uri.parse(rssUrl));

    if (response.statusCode == 200) {
      final decoded = response.body;
      final feed = RssFeed.parse(decoded);
      setState(() {
        _feed = feed;
      });
    } else {
      throw Exception('Failed to load RSS feed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RSS Reader'),
      ),
      body: ListView.builder(
        itemCount: _feed.items!.length,
        itemBuilder: (context, index) {
          final rssItem = _feed.items![index];
          return RssFeedCard(rssFeedItem: RssFeedItem.fromRssItem(rssItem));
        },
      ),
    );
  }
}
