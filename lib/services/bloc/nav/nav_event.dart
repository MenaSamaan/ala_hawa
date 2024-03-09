import 'package:flutter/material.dart';

@immutable
sealed class NavEvent {}

final class NavEventFeatured extends NavEvent {}

final class NavEventEditorsPicks extends NavEvent {}

final class NavEventTrending extends NavEvent {}

final class NavEventWatch extends NavEvent {}

final class NavEventListen extends NavEvent {}

final class NavEventAkhbarCanada extends NavEvent {}

final class NavEventAmrica extends NavEvent {}

final class NavEventDawli extends NavEvent {}

final class NavEventSiyasah extends NavEvent {}

final class NavEventEqtesad extends NavEvent {}

final class NavEventRiyadah extends NavEvent {}

final class NavEventMonaweat extends NavEvent {}

final class NavEventSiyahahWsafar extends NavEvent {}

final class NavEventGareemahWhawadeth extends NavEvent {}

final class NavEventHegrah extends NavEvent {}

final class NavEventAboutUs extends NavEvent {}

final class NavEventContactUs extends NavEvent {}

final class NavEventSettings extends NavEvent {}
