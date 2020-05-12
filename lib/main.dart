import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'lang/app_localizations.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        const AppLocalizationsDelegate(),
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', ''),
      ],
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
      },
    );
  }
}

void main() => runApp(MyApp());
