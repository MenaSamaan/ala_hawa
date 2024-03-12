import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ala_hawa/rss_feed_app/rss_feed_app.dart';

class RssFeedView extends StatefulWidget {
  const RssFeedView({super.key});

  @override
  State<RssFeedView> createState() => _RssFeedViewState();
}

class _RssFeedViewState extends State<RssFeedView> {
  @override
  void initState() {
    context.read<RssFeedCubit>().getRssFeed();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RssFeedCubit, RssFeedState>(
      builder: (context, state) {
        switch (state.status) {
          case RssFeedStatus.loading:
            return const RssFeedLoading();
          case RssFeedStatus.success:
            return RssFeedPopulated(
              rssFeed: state.rssFeed,
              onRefresh: () {
                return context.read<RssFeedCubit>().refreshRssFeed();
              },
            );
          case RssFeedStatus.failure:
            return const RssFeedError();
        }
      },
    );
  }
}
