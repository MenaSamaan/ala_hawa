import 'package:ala_hawa/assets/custom_bottom_navbar.dart';
import 'package:ala_hawa/constants/maps/pages_map.dart';
import 'package:ala_hawa/services/bloc/nav/nav.dart';
import 'package:ala_hawa/views/featured_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlaHawa extends StatefulWidget {
  const AlaHawa({super.key});

  @override
  State<AlaHawa> createState() => _AlaHawaState();
}

class _AlaHawaState extends State<AlaHawa> {
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
