import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() => ThemeData(
      accentColor: Constants.usedAccentColor,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Constants.usedPrimaryColor,
      textTheme: _textTheme(),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
              vertical: Constants.usedDefaultPadding,
              horizontal: Constants.usedBigPadding),
          alignment: Alignment.center,
        ),
      ),
    );

TextTheme _textTheme() => TextTheme(
      bodyText2: TextStyle(
        fontFamily: Constants.usedBodyFontName,
        color: Constants.usedTextColor,
        fontSize: Constants.usedBodyFontSize,
      ),
      headline6: TextStyle(
        fontFamily: Constants.usedHeaderFontName,
        color: Constants.usedTextColor,
        fontSize: Constants.usedHeaderFontSize,
        fontWeight: FontWeight.bold,
      ),
    );
