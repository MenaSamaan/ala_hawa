import 'package:webfeed/webfeed.dart';
import 'package:equatable/equatable.dart';

class RssFeedItem extends Equatable {
  final String title;
  final String description;
  final DateTime pubDate;
  final String thumbnailUrl;

  const RssFeedItem({
    required this.title,
    required this.description,
    required this.pubDate,
    required this.thumbnailUrl,
  });

  factory RssFeedItem.fromRssItem(RssItem item) {
    return RssFeedItem(
      title: item.title ?? '',
      description: item.description ?? '',
      pubDate: item.pubDate ?? DateTime.now(),
      thumbnailUrl: item.media?.thumbnails?.first.url ?? '',
    );
  }

  @override
  List<Object?> get props => [title, description, pubDate, thumbnailUrl];
}
