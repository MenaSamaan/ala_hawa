import 'package:ala_hawa/services/bloc/nav/nav_event.dart';
import 'package:ala_hawa/services/bloc/nav/nav_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(NavStateFeatured()) {
    on<NavEventFeatured>((event, emit) => emit(NavStateFeatured()));
    on<NavEventEditorsPicks>((event, emit) => emit(NavStateEditorsPick()));
    on<NavEventTrending>((event, emit) => emit(NavStateTrending()));
    on<NavEventWatch>((event, emit) => emit(NavStateWatch()));
    on<NavEventListen>((event, emit) => emit(NavStateListen()));
    on<NavEventAkhbarCanada>((event, emit) => emit(NavStateAkhbarCanada()));
    on<NavEventAmrica>((event, emit) => emit(NavStateAmrica()));
    on<NavEventDawli>((event, emit) => emit(NavStateDawli()));
    on<NavEventSiyasah>((event, emit) => emit(NavStateSiyasah()));
    on<NavEventEqtesad>((event, emit) => emit(NavStateEqtesad()));
    on<NavEventRiyadah>((event, emit) => emit(NavStateRiyadah()));
    on<NavEventMonaweat>((event, emit) => emit(NavStateMonaweat()));
    on<NavEventSiyahahWsafar>((event, emit) => emit(NavStateSiyahahWsafar()));
    on<NavEventGareemahWhawadeth>(
        (event, emit) => emit(NavStateGareemahWhawadeth()));
    on<NavEventHegrah>((event, emit) => emit(NavStateHegrah()));
    on<NavEventAboutUs>((event, emit) => emit(NavStateAboutUs()));
    on<NavEventContactUs>((event, emit) => emit(NavStateContactUs()));
    on<NavEventSettings>((event, emit) => emit(NavStateSettings()));
  }
}
