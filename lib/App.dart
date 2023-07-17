import 'package:flutter/material.dart';
import 'package:koupag/routes/routes.dart';
import 'package:koupag/utils/theme/theme_data.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CustomTheme.data(false, context),
      darkTheme: CustomTheme.data(true, context),
      initialRoute: 'main_screen',
      routes: Routes.allRoutes,
    );
  }
}
