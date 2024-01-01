import 'package:bhagavad_gita_app/screen/home/view/home_screen.dart';
import 'package:bhagavad_gita_app/screen/shloka/view/shloka_screen.dart';
import 'package:bhagavad_gita_app/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> app_routes=
{
  '/':(context) => SplashScreen(),
  'home':(context) => HomeScreen(),
  'shloka':(context) => ShlokaScreen(),
};