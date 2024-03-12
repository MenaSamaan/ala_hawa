import 'package:ala_hawa/rss_feed_app/repository_layer/repository_layer.dart';
import 'package:ala_hawa/rss_feed_app/business_logic_layer/business_logic_layer.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'rss_feed_state.dart';

class RssFeedCubit extends Cubit<RssFeedState> {
  final RssFeedRepository _rssFeedRepository;

  RssFeedCubit(this._rssFeedRepository) : super(RssFeedState());

  Future<void> getRssFeed() async {
    emit(state.copyWith(status: RssFeedStatus.loading));

    try {
      final rssFeed = RssFeed.fromRepository(_rssFeedRepository);

      final rssFeedItems = _rssFeedRepository.getItems();
      emit(
        state.copyWith(
          status: RssFeedStatus.success,
          rssFeed: rssFeed.copyWith(rssFeedItems: rssFeedItems),
        ),
      );
    } on Exception {
      emit(state.copyWith(status: RssFeedStatus.failure));
    }
  }

  Future<void> refreshRssFeed() async {
    if (!state.status.isSuccess) return;
    if (state.rssFeed == RssFeed.empty) return;
    emit(state.copyWith(status: RssFeedStatus.loading));
    try {
      final rssFeed = RssFeed.fromRepository(_rssFeedRepository);
      final rssFeedItems = _rssFeedRepository.getItems();
      emit(
        state.copyWith(
          status: RssFeedStatus.success,
          rssFeed: rssFeed.copyWith(rssFeedItems: rssFeedItems),
        ),
      );
    } on Exception {
      emit(state.copyWith(status: RssFeedStatus.failure));
    }
  }
}
