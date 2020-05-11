import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'lang/app_localizations.dart';

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
      home: MyHomePage(),
    );
  }
}

void main() => runApp(MyApp());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final i10n = AppLocalizations.of(context);
    Locale myLocale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(i10n.title),
      ),
      body: Column(
        children: <Widget>[
          Text(myLocale.toString()),
          Center(
            child: Text(i10n.register),
          ),
        ],
      ),
    );
  }
}
