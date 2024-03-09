part of 'rss_feed_cubit.dart';

enum RssFeedStatus { loading, success, failure }

extension RssFeedStatusX on RssFeedStatus {
  bool get isLoading => this == RssFeedStatus.loading;
  bool get isSuccess => this == RssFeedStatus.success;
  bool get isFailure => this == RssFeedStatus.failure;
}

final class RssFeedState extends Equatable {
  final RssFeedStatus status;
  final RssFeed rssFeed;

  RssFeedState({
    this.status = RssFeedStatus.loading,
    RssFeed? rssFeed,
  }) : rssFeed = rssFeed ?? RssFeed.empty;

  RssFeedState copyWith({
    RssFeedStatus? status,
    RssFeed? rssFeed,
  }) {
    return RssFeedState(
      status: status ?? this.status,
      rssFeed: rssFeed ?? this.rssFeed,
    );
  }

  @override
  List<Object?> get props => [status, rssFeed];
}
