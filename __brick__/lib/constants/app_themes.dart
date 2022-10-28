import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  //constants color range for light theme
  //main color
  static const Color _lightPrimaryColor = Color(0XFF688CFF);

  //Background Colors
  static const Color _lightBackgroundColor = Color(0XFFF4EFF4);
  static const Color _lightBackgroundAppBarColor = Color(0XFF688CFF);
  static const Color _lightBackgroundSecondaryColor = Color(0XFFFFFFFF);
  static const Color _lightBackgroundAlertColor = Color(0XFF1E1F2B);
  static const Color _lightBackgroundActionTextColor = Color(0XFFFFFFFF);
  static const Color _lightBackgroundErrorColor = Color(0XFFFF6188);
  static const Color _lightBackgroundSuccessColor = Color(0XFFBAD761);

  //Text Colors
  static const Color _lightTextColor = Colors.black;
  static const Color _lightAlertTextColor = Colors.black;
  static const Color _lightTextSecondaryColor = Colors.black;

  //Border Color
  static const Color _lightBorderColor = Color(0XFF696D77);

  //Icon Color
  static const Color _lightIconColor = Color(0XFF696D77);

  //form input colors
  static const Color _lightInputFillColor = _lightBackgroundSecondaryColor;
  static const Color _lightBorderActiveColor = _lightPrimaryColor;
  static const Color _lightBorderErrorColor = Color(0XFFFF6188);
/////////////////////// end of light consts ///////////////////////
  //constants color range for dark theme
  static const Color _darkPrimaryColor = Color(0XFF688CFF);

  //Background Colors
  static const Color _darkBackgroundColor = Color(0XFF282A3A);
  static const Color _darkBackgroundSecondaryColor =
      Color.fromRGBO(0, 0, 0, .6);
  static const Color _darkBackgroundAlertColor = Color(0XFF1E1F2B);
  static const Color _darkBackgroundActionTextColor = Color(0XFFFFFFFF);

  static const Color _darkBackgroundErrorColor =
      Color.fromRGBO(255, 97, 136, 1);
  static const Color _darkBackgroundSuccessColor =
      Color.fromRGBO(186, 215, 97, 1);

  //Text Colors
  static const Color _darkTextColor = Colors.white;
  static const Color _darkAlertTextColor = Colors.black;
  static const Color _darkTextSecondaryColor = Colors.black;

  //Border Color
  static const Color _darkBorderColor = Color(0XFF696D77);

  //Icon Color
  static const Color _darkIconColor = Color(0XFF696D77);

  static const Color _darkInputFillColor = _darkBackgroundSecondaryColor;
  static const Color _darkBorderActiveColor = _darkPrimaryColor;
  static const Color _darkBorderErrorColor = Color(0XFFFF6188);

  //text theme for light theme
  static const TextTheme _lightTextTheme = TextTheme(
    headline1: TextStyle(
        fontSize: 20.0, color: Color(0XFF151212), fontWeight: FontWeight.w900),
    bodyText1: TextStyle(
        fontSize: 16.0, color: Color(0XFF151212), fontWeight: FontWeight.w400),
    bodyText2: TextStyle(
        fontSize: 14.0, color: Color(0xFF151212), fontWeight: FontWeight.w400),
    button: TextStyle(
        fontSize: 15.0, color: _lightTextColor, fontWeight: FontWeight.w600),
    headline6: TextStyle(
        fontSize: 16.0, color: Color(0XFF151212), fontWeight: FontWeight.w700),
    subtitle1: TextStyle(
        fontSize: 16.0, color: Color(0XFF0F2D52), fontWeight: FontWeight.w400),
    caption: TextStyle(
        fontSize: 12.0, color: Color(0XFF0F2D52), fontWeight: FontWeight.w500),
  );

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Source_Sans_Pro',
    scaffoldBackgroundColor: _lightBackgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryColor,
    ),
    appBarTheme: const AppBarTheme(
      color: _lightBackgroundAppBarColor,
      iconTheme: IconThemeData(color: _darkTextColor),
      textTheme: _darkTextTheme,
    ),
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
      primaryVariant: _lightBackgroundColor,
      secondary: _lightPrimaryColor,
    ),
    snackBarTheme: const SnackBarThemeData(
        backgroundColor: _lightBackgroundAlertColor,
        actionTextColor: _lightBackgroundActionTextColor),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    popupMenuTheme:
        const PopupMenuThemeData(color: _lightBackgroundAppBarColor),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        buttonColor: _lightPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _lightPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      //prefixStyle: TextStyle(color: _lightIconColor),
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderColor, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _lightBackgroundSecondaryColor,
      //focusColor: _lightBorderActiveColor,
    ),
  );

//text theme for dark theme

  static const TextTheme _darkTextTheme = TextTheme(
    headline1: TextStyle(
        fontSize: 20.0, color: _darkTextColor, fontWeight: FontWeight.w900),
    bodyText1: TextStyle(
        fontSize: 16.0, color: _darkTextColor, fontWeight: FontWeight.w400),
    bodyText2: TextStyle(
        fontSize: 14.0, color: Colors.grey, fontWeight: FontWeight.w400),
    button: TextStyle(
        fontSize: 15.0, color: _darkTextColor, fontWeight: FontWeight.w600),
    headline6: TextStyle(
        fontSize: 16.0, color: _darkTextColor, fontWeight: FontWeight.w700),
    subtitle1: TextStyle(
        fontSize: 16.0, color: _darkTextColor, fontWeight: FontWeight.w400),
    caption: TextStyle(
        fontSize: 12.0, color: _darkPrimaryColor, fontWeight: FontWeight.w500),
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    //primarySwatch: _darkPrimaryColor, //cant be Color on MaterialColor so it can compute different shades.

    fontFamily: 'Source_Sans_Pro',
    scaffoldBackgroundColor: _darkBackgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _darkPrimaryColor,
    ),
    appBarTheme: const AppBarTheme(
      color: _darkPrimaryColor,
      iconTheme: IconThemeData(color: _darkTextColor),
      textTheme: _darkTextTheme,
    ),
    colorScheme: const ColorScheme.dark(
      primary: _darkPrimaryColor,
      primaryVariant: _darkBackgroundColor,
      secondary: _darkPrimaryColor,
    ),
    snackBarTheme: const SnackBarThemeData(
        contentTextStyle: TextStyle(color: Colors.white),
        backgroundColor: _darkBackgroundAlertColor,
        actionTextColor: _darkBackgroundActionTextColor),
    iconTheme: const IconThemeData(
      color: _darkIconColor, //_darkIconColor,
    ),
    popupMenuTheme: const PopupMenuThemeData(color: _darkPrimaryColor),
    textTheme: _darkTextTheme,
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        buttonColor: _darkPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _darkPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      prefixStyle: TextStyle(color: _darkIconColor),
      //labelStyle: TextStyle(color: nevada),
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderColor, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _darkInputFillColor,
      //focusColor: _darkBorderActiveColor,
    ),
  );
}
