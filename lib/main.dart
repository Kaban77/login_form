import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:login_form/generated/l10n.dart';
import 'package:login_form/themes/theme.dart';
import 'package:login_form/pages/login.dart';
import 'package:login_form/pages/success.dart';

void main() => runApp(AdaptiveTheme(
  light: lightTheme,
  dark: darkTheme,
  initial: AdaptiveThemeMode.dark,
  builder: (light, dark) => MaterialApp(
    theme: light,
    darkTheme: dark,
    title: 'Test login form',
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: const [
      Locale('en', ''),
      Locale('ru', ''),
    ],
    initialRoute: '/',
    routes: {
      '/': (context) => const MyHomePage(),
      '/success': (context) => const SuccessLoginScreen(),
    },
    )
  )
);
