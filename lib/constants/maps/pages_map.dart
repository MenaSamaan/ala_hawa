import 'package:ala_hawa/services/bloc/nav/nav_state.dart';
import 'package:ala_hawa/views/editors_picks_view.dart';
import 'package:ala_hawa/views/featured_view.dart';
import 'package:ala_hawa/views/more/about_us_view.dart';
import 'package:ala_hawa/views/more/akhbar_canada_view.dart';
import 'package:ala_hawa/views/more/amrica_view.dart';
import 'package:ala_hawa/views/more/contact_us_view.dart';
import 'package:ala_hawa/views/more/dawli_view.dart';
import 'package:ala_hawa/views/more/eqtesad_view.dart';
import 'package:ala_hawa/views/more/gareemah_whawadeth_view.dart';
import 'package:ala_hawa/views/more/hegrah_view.dart';
import 'package:ala_hawa/views/more/listen_view.dart';
import 'package:ala_hawa/views/more/monaweat_view.dart';
import 'package:ala_hawa/views/more/riyadah_view.dart';
import 'package:ala_hawa/views/more/siyahah_wsafar_view.dart';
import 'package:ala_hawa/views/more/siyasah_view.dart';
import 'package:ala_hawa/views/other/settings_view.dart';
import 'package:ala_hawa/views/trending_view.dart';
import 'package:ala_hawa/views/watch_view.dart';
import 'package:flutter/material.dart';

final Map<Type, Widget> pagesMap = {
  NavStateFeatured: const FeaturedView(),
  NavStateEditorsPick: const EditorsPicksView(),
  NavStateTrending: const TrendingView(),
  NavStateWatch: const WatchView(),
  NavStateListen: const ListenView(),
  NavStateAkhbarCanada: const AkhbarCanadaView(),
  NavStateAmrica: const AmricaView(),
  NavStateDawli: const DawliView(),
  NavStateSiyasah: const SiyasahView(),
  NavStateEqtesad: const EqtesadView(),
  NavStateRiyadah: const RiyadahView(),
  NavStateMonaweat: const MonaweatView(),
  NavStateSiyahahWsafar: const SiyahahWsafarView(),
  NavStateGareemahWhawadeth: const GareemahWhawadethView(),
  NavStateHegrah: const HegrahView(),
  NavStateAboutUs: const AboutUsView(),
  NavStateContactUs: const ContactUsView(),
  NavStateSettings: const SettingsView(),
};
