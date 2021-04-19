import 'package:flutter/material.dart';
import 'package:google_map_location_picker/generated/l10n.dart'
as location_picker;
import 'package:flutter_localizations/flutter_localizations.dart';

import 'screens/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        location_picker.S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en', ''),
        Locale('id', ''),
      ],
      title: 'Mobile Student STT NF',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
