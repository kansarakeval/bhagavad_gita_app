import 'package:bhagavad_gita_app/screen/home/provider/home_provider.dart';
import 'package:bhagavad_gita_app/util/app_routes.dart';
import 'package:bhagavad_gita_app/util/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      ),
    ],
    child: Consumer<HomeProvider>(builder: (context, value, child) {
      value.changeTheme();
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(useMaterial3: true),
        theme: value.islight ? lightTheme : darkTheme,
        routes: app_routes,
      );
    },
    ),
  ));
}
