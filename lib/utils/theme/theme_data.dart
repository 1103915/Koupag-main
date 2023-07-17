import 'package:flutter/material.dart';

//Customized Theme
class CustomTheme {
  static ThemeData data(bool isDark, BuildContext context) {
    // Hexacolor to Material Color
    const String hexPrimaryColor = "#5FD8AB";
    final Color primaryColor = Color(
        int.parse(hexPrimaryColor.substring(1, 7), radix: 16) + 0xFF000000);

    const String hexSecondaryColor = "#2CDB9A";
    final Color secondaryColor = Color(
        int.parse(hexSecondaryColor.substring(1, 7), radix: 16) + 0xFF000000);

    const String hexPrimaryDarkColor = "#12865B";
    final Color primaryDarkColor = Color(
        int.parse(hexPrimaryDarkColor.substring(1, 7), radix: 16) + 0xFF000000);

    return ThemeData(
      //basic color variables
      primaryColor: isDark ? primaryDarkColor : primaryColor,
      canvasColor: isDark ? primaryDarkColor : primaryColor,
      splashColor: secondaryColor,
      hoverColor: secondaryColor,
      //flutter widget variables
      appBarTheme: AppBarTheme(
        color: isDark ? primaryDarkColor : primaryColor,
      ),
      scaffoldBackgroundColor: isDark ? Colors.grey[900] : Colors.grey[100],

      //bottom Nevigation bar theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        selectedIconTheme: IconThemeData(
          size: 35,
        ),
      ),

      //Texts theme
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),

      //Card theme
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAlias,
        color: isDark ? primaryDarkColor : primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),

      //ListTile theme
      listTileTheme: const ListTileThemeData(
        iconColor: Colors.white,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        subtitleTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),

      //progressbar theme
      progressIndicatorTheme: ProgressIndicatorThemeData(
        circularTrackColor: isDark ? primaryColor : primaryDarkColor,
        linearTrackColor: isDark ? primaryDarkColor : primaryColor,
        color: isDark ? primaryColor : primaryDarkColor,
        linearMinHeight: 10,
      ),
    );
  }
}
