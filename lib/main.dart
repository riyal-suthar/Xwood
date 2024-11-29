import 'package:athathi/core/config/theme/theme.dart';
import 'package:flutter/material.dart';

import 'export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // textDirection: Tex,
      theme: ThemeData(
        useMaterial3: true,
        brightness: AppMaterialTheme.lightScheme().brightness,
        colorScheme: AppMaterialTheme.lightScheme(),
        textTheme: TextTheme().apply(
          bodyColor: AppMaterialTheme.lightScheme().onSurface,
          displayColor: AppMaterialTheme.lightScheme().onSurface,
        ),
        scaffoldBackgroundColor: AppMaterialTheme.lightScheme().background,
        canvasColor: AppMaterialTheme.lightScheme().surface,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        fontFamily: "Geologica",
        brightness: AppMaterialTheme.darkScheme().brightness,
        colorScheme: AppMaterialTheme.darkScheme(),
        scaffoldBackgroundColor: AppMaterialTheme.darkScheme().background,
        canvasColor: AppMaterialTheme.darkScheme().surface,
      ),
      // home: CustomProductListView(),
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.getPages,
    );
  }
}
