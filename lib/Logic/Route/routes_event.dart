part of 'routes_bloc.dart';

@immutable
abstract class RoutesEvent {}

class _RoutesChanged extends RoutesEvent {
  final RouteStatus status;

  _RoutesChanged({required this.status});
}
