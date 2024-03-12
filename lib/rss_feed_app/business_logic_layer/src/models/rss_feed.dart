import 'package:ala_hawa/rss_feed_app/repository_layer/repository_layer.dart';
import 'package:equatable/equatable.dart';

class RssFeed extends Equatable {
  final List<RssFeedItem> rssFeedItems;

  const RssFeed({
    required this.rssFeedItems,
  });

  factory RssFeed.fromRepository(RssFeedRepository rssFeedRepository) {
    return RssFeed(
      rssFeedItems: rssFeedRepository.getItems(),
    );
  }

  static const empty = RssFeed(
    rssFeedItems: [],
  );

  RssFeed copyWith({
    List<RssFeedItem>? rssFeedItems,
  }) {
    return RssFeed(
      rssFeedItems: rssFeedItems ?? this.rssFeedItems,
    );
  }

  @override
  List<Object?> get props => [rssFeedItems];
}
