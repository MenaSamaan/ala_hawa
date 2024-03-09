import 'package:ala_hawa/assets/custom_bottom_navbar.dart';
import 'package:ala_hawa/constants/maps/pages_map.dart';
import 'package:ala_hawa/rss_feed/rss_feed.dart';
import 'package:ala_hawa/services/bloc/nav/nav.dart';
import 'package:ala_hawa/views/featured_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({
    required RssFeedRepository rssFeedRepository,
    super.key,
  }) : _rssFeedRepository = rssFeedRepository;

  final RssFeedRepository _rssFeedRepository;
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _rssFeedRepository,
      child: BlocProvider(
        create: (_) => RssFeedCubit(_rssFeedRepository),
        child: const AlaHawa(),
      ),
    );
  }
}

class AlaHawa extends StatelessWidget {
  const AlaHawa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ala_Hawa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NavBloc(),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        // toolbarHeight: 100,
        backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        leading: IconButton(
          onPressed: () {
            context.read<NavBloc>().add(NavEventSettings());
          },
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
            size: 28,
          ),
        ),
        title: const Image(
          image: AssetImage('images/ala_hawa_logo.png'),
          // height: 100,
          height: 50,
        ),
        centerTitle: true,
        // titleTextStyle: TextStyle,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: BlocBuilder<NavBloc, NavState>(
        builder: (context, state) {
          return pagesMap[state.runtimeType] ?? const FeaturedView();
        },
      ),
      bottomNavigationBar: const CustomBottomNavbar(),
    );
  }
}
