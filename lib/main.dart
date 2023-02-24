import 'package:animated_counter_app/Splash/Repository/splash_stream.dart';
import 'package:animated_counter_app/app.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App(repository: RoutesRepository()));
}
