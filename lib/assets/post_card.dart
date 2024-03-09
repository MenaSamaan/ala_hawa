import 'package:ala_hawa/rss_feed_repository/src/models/rss_feed_item.dart';
import 'package:flutter/material.dart';

class RssFeedCard extends StatelessWidget {
  final RssFeedItem rssFeedItem;

  const RssFeedCard({
    required this.rssFeedItem,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            rssFeedItem.thumbnailUrl,
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rssFeedItem.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(rssFeedItem.description),
                const SizedBox(height: 8),
                Text(
                  toTimeAgo(rssFeedItem.pubDate),
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String toTimeAgo(DateTime pubDate) {
    final now = DateTime.now();
    final difference = now.difference(pubDate);
    if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    } else {
      return 'just now';
    }
  }
}
