import 'package:ala_hawa/ala_hawa.dart';
import 'package:ala_hawa/rss_feed_app/rss_feed_app.dart';
import 'package:ala_hawa/services/bloc/nav/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: RssFeedRepository(),
      child: MaterialApp(
        title: 'Ala_Hawa',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => NavBloc(),
            ),
            BlocProvider(
              create: (context) =>
                  RssFeedCubit(context.read<RssFeedRepository>()),
            ),
          ],
          child: const AlaHawa(),
        ),
      ),
    );
  }
}
