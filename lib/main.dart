import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:login_form/generated/l10n.dart';
import 'package:login_form/pages/login.dart';
import 'package:login_form/pages/success.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(250, 29, 30, 32),
    useMaterial3: true,
  ),
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
);
