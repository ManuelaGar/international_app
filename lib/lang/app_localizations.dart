import 'package:intl/intl.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:internationalapp/l10n/messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get title => Intl.message(
        'Hello World',
        name: 'title',
        desc: 'Title for the Demo application',
      );

  String get register => Intl.message(
        'Register',
        name: 'register',
        desc: 'App register btn',
      );
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}

// In terminal run:
// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/lang/app_localizations.dart
// flutter pub pub run intl_translation:generate_from_arb lib/lang/app_localizations.dart lib/l10n/*.arb --output-dir=lib/l10n
