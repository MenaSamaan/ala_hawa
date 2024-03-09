import 'package:ala_hawa/assets/custom_bottom_navbar_item.dart';
import 'package:ala_hawa/assets/custom_more_menu_item.dart';
import 'package:ala_hawa/constants/enums/more_views.dart';
import 'package:ala_hawa/services/bloc/nav/nav_bloc.dart';
import 'package:ala_hawa/services/bloc/nav/nav_event.dart';
import 'package:ala_hawa/services/bloc/nav/nav_state.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBottomNavbarItem(
              text: 'Featured',
              icon: Icons.featured_video_outlined,
              selected: context.select((NavBloc bloc) {
                return bloc.state is NavStateFeatured;
              }),
              onPressed: () {
                setState(() {
                  context.read<NavBloc>().add(NavEventFeatured());
                });
              },
            ),
            CustomBottomNavbarItem(
              text: "Editor's Pick",
              icon: Icons.grade,
              selected: context.select((NavBloc bloc) {
                return bloc.state is NavStateEditorsPick;
              }),
              onPressed: () {
                setState(() {
                  context.read<NavBloc>().add(NavEventEditorsPicks());
                });
              },
            ),
            CustomBottomNavbarItem(
              text: 'Trending',
              icon: Icons.trending_up,
              selected: context.select((NavBloc bloc) {
                return bloc.state is NavStateTrending;
              }),
              onPressed: () {
                context.read<NavBloc>().add(NavEventTrending());
              },
            ),
            CustomBottomNavbarItem(
              text: 'Watch',
              icon: Icons.slideshow,
              selected: context.select((NavBloc bloc) {
                return bloc.state is NavStateWatch;
              }),
              onPressed: () {
                context.read<NavBloc>().add(NavEventWatch());
              },
            ),
            Column(
              children: [
                PopupMenuButton<MoreViews>(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  elevation: 0,
                  icon: const Icon(Icons.menu),
                  iconColor: Colors.grey,
                  onSelected: (value) {
                    switch (value) {
                      case MoreViews.listen:
                        context.read<NavBloc>().add(NavEventListen());
                      case MoreViews.akhbarCanada:
                        context.read<NavBloc>().add(NavEventAkhbarCanada());
                      case MoreViews.amrica:
                        context.read<NavBloc>().add(NavEventAmrica());
                      case MoreViews.dawli:
                        context.read<NavBloc>().add(NavEventDawli());
                      case MoreViews.siyasah:
                        context.read<NavBloc>().add(NavEventSiyasah());
                      case MoreViews.eqtesad:
                        context.read<NavBloc>().add(NavEventEqtesad());
                      case MoreViews.riyadah:
                        context.read<NavBloc>().add(NavEventRiyadah());
                      case MoreViews.monaweat:
                        context.read<NavBloc>().add(NavEventMonaweat());
                      case MoreViews.siyahahWsafar:
                        context.read<NavBloc>().add(NavEventSiyahahWsafar());
                      case MoreViews.gareemahWhawadeth:
                        context
                            .read<NavBloc>()
                            .add(NavEventGareemahWhawadeth());
                      case MoreViews.hegrah:
                        context.read<NavBloc>().add(NavEventHegrah());
                      case MoreViews.aboutUs:
                        context.read<NavBloc>().add(NavEventAboutUs());
                      case MoreViews.contactUs:
                        context.read<NavBloc>().add(NavEventContactUs());
                      default:
                        context.read<NavBloc>().add(NavEventFeatured());
                    }
                  },
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.listen,
                        child: CustomMoreMenuItem(
                          text: 'Listen',
                          icon: Icons.headphones,
                        ),
                      ),
                      PopupMenuItem<MoreViews>(
                        value: MoreViews.akhbarCanada,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Flag.fromCode(
                                FlagsCode.CA,
                                height: 28,
                                width: 28,
                                borderRadius: 8,
                              ),
                            ),
                            const Text(
                              'أخبار كندا',
                              style: TextStyle(
                                fontSize: 12,
                                height: .1,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem<MoreViews>(
                        value: MoreViews.amrica,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Flag.fromCode(
                                FlagsCode.US,
                                height: 28,
                                width: 28,
                                borderRadius: 8,
                              ),
                            ),
                            const Text(
                              'أمريكا',
                              style: TextStyle(
                                fontSize: 12,
                                height: .1,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.dawli,
                        child: CustomMoreMenuItem(
                          text: 'دولي',
                          icon: Icons.public,
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.siyasah,
                        child: CustomMoreMenuItem(
                          text: 'سياسة',
                          icon: Icons.account_balance_outlined,
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.eqtesad,
                        child: CustomMoreMenuItem(
                          text: 'اقتصاد',
                          icon: Icons.attach_money,
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.riyadah,
                        child: CustomMoreMenuItem(
                          text: 'رياضة',
                          icon: Icons.sports_basketball,
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.monaweat,
                        child: CustomMoreMenuItem(
                          text: 'منوعات',
                          icon: Icons.category_outlined,
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.siyahahWsafar,
                        child: CustomMoreMenuItem(
                          text: 'سياحة وسفر',
                          icon: Icons.flight,
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.gareemahWhawadeth,
                        child: CustomMoreMenuItem(
                          text: 'جريمة وحوادث',
                          icon: Icons.car_crash_outlined,
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.hegrah,
                        child: CustomMoreMenuItem(
                          text: 'هجرة',
                          icon: Icons.flight_takeoff,
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.aboutUs,
                        child: CustomMoreMenuItem(
                          text: 'من نحن',
                          icon: Icons.info_outline,
                        ),
                      ),
                      const PopupMenuItem<MoreViews>(
                        value: MoreViews.contactUs,
                        child: CustomMoreMenuItem(
                          text: 'أتصل بنا',
                          icon: Icons.help_outline,
                        ),
                      ),
                    ];
                  },
                ),
                const Text(
                  'More',
                  style: TextStyle(
                    fontSize: 12,
                    height: .1,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
