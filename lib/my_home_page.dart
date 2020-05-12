import 'package:flutter/material.dart';
import 'package:internationalapp/lang/app_localizations.dart';

class MyHomePage extends StatefulWidget {
  static const id = 'home_screen';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
