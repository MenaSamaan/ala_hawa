import 'package:ala_hawa/rss_feed_repository/rss_feed_repository.dart';
import 'package:equatable/equatable.dart';

class RssFeed extends Equatable {
  final DateTime lastUpdated;
  final List<RssFeedItem> rssFeedItems;

  const RssFeed({
    required this.lastUpdated,
    required this.rssFeedItems,
  });

  factory RssFeed.fromRepository(RssFeedRepository rssFeedRepository) {
    return RssFeed(
      lastUpdated: DateTime.now(),
      rssFeedItems: rssFeedRepository.getItems(),
    );
  }

  static final empty = RssFeed(
    lastUpdated: DateTime(0),
    rssFeedItems: const [],
  );

  RssFeed copyWith({
    DateTime? lastUpdated,
    List<RssFeedItem>? rssFeedItems,
  }) {
    return RssFeed(
      lastUpdated: lastUpdated ?? this.lastUpdated,
      rssFeedItems: rssFeedItems ?? this.rssFeedItems,
    );
  }

  @override
  List<Object?> get props => [lastUpdated, rssFeedItems];
}
