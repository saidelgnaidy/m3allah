part of 'settings_cubit.dart';

abstract class SettingsState {
  ThemeData? getThemeData() {
    return null;
  }
}

class SettingsLoading with SettingsState {}

class SettingsLoaded with SettingsState {
  SettingsModel settingsModel;
  SettingsLoaded(this.settingsModel);

  @override
  ThemeData getThemeData() {
    final bool isLight = settingsModel.isLight;

    return ThemeData(
      brightness: isLight ? Brightness.light : Brightness.dark,
      fontFamily: 'font5',
      shadowColor: isLight ? lightShadow : darkShadow,
      drawerTheme: DrawerThemeData(backgroundColor: isLight ? lightBack1 : darkBack1),
      colorScheme: const ColorScheme.light().copyWith(
        background: isLight ? lightBack2 : darkBack2,
        surface: isLight ? lightBack3 : darkBack3,
        secondary: isLight ? lightBack4 : darkBack4,
        brightness: isLight ? Brightness.light : Brightness.dark,
      ),
      appBarTheme: AppBarTheme(
        elevation: 5,
        shadowColor: isLight ? lightShadow : darkShadow,
        color: isLight ? lightBack2 : darkBack2,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: isLight ? lightBack2 : darkBack2,
          statusBarBrightness: isLight ? Brightness.dark : Brightness.light,
          statusBarIconBrightness: isLight ? Brightness.dark : Brightness.light,
          systemNavigationBarIconBrightness: isLight ? Brightness.dark : Brightness.light,
          systemNavigationBarColor: isLight ? lightBack2 : darkBack2,
          systemNavigationBarDividerColor: isLight ? lightBack2 : darkBack2,
        ),
      ),
      iconTheme: IconThemeData(color: isLight ? lightIcon : darkIcon),
      textTheme: TextTheme(
        headline6: TextStyle(color: isLight ? lightText1 : darkText1),
        headline5: TextStyle(color: isLight ? lightText1 : darkText1),
        headline4: TextStyle(color: isLight ? lightText1 : darkText1),
        headline3: TextStyle(color: isLight ? lightText1 : darkText1),
        headline2: TextStyle(color: isLight ? lightText2 : darkText2),
        headline1: TextStyle(color: isLight ? lightText1 : darkText1),
        bodyText1: TextStyle(color: isLight ? lightText1 : darkText1),
        bodyText2: TextStyle(color: isLight ? lightText1 : darkText1),
        subtitle1: TextStyle(color: isLight ? lightText1 : darkText1, fontFamily: 'font3'),
        subtitle2: TextStyle(color: isLight ? lightText2 : darkText2, fontFamily: 'font3'),
        headlineLarge: TextStyle(color: isLight ? lightText1 : darkText1, fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'font5'),
        button: TextStyle(color: isLight ? lightText1 : darkText1),
        caption: TextStyle(color: isLight ? lightText1 : darkText1, fontSize: settingsModel.fontSize, fontFamily: 'font${settingsModel.fontCode}'),
        labelMedium: TextStyle(color: isLight ? lightText1 : darkText1),
        overline: TextStyle(color: isLight ? lightText1 : darkText1),
      ),
    );
  }
}
