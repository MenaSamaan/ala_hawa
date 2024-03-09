import 'package:ala_hawa/app.dart';
import 'package:ala_hawa/rss_feed/rss_feed.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App(rssFeedRepository: RssFeedRepository()));
}
