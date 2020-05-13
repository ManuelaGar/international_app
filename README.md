# International App

A new Flutter application that detects the language of the device and changes its content accordingly. If the language is not supported, it defaults to english.

## Step by step guide to add language detection to your app.
 1. Create two folders called i10n and lang inside the lib folder.
 2. Create 3 files called intl_messages.arb, intl_es.arb, intl_en.arb inside i10n.
 3. Create a file called app_localization.dart inside the lang folder and add the same content as in the file in this example.
 4. In terminal run:
 flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/i10n lib/lang/app_localizations.dart
 5. Go to intl_messages.arb and copy the content to the two other .arb files, translating the parts accordingly.
 6. In terminal run:
 flutter pub pub run intl_translation:generate_from_arb lib/lang/app_localizations.dart lib/i10n/*.arb --output-dir=lib/i10n
 After this, 4 other files must have been created automatically inside the i10n folder messages_en.dart, messages_messages.dart, messages_all.dart, messages_es.dart
 7. Go to main.dart and add the following inside MaterialApp:
 ```ruby
localizationsDelegates: [
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  const AppLocalizationsDelegate(),
 ],
supportedLocales: [
  const Locale('en', ''),
  const Locale('es', ''),
 ],
 ```
 8. Update the languages in ios/Runner/info.plist accordingly
 9. Start adding the translations in your code, in the app_localizations.dart file.
 Note: Every time you change the app_localizations.dart file you must re-run steps 4 and 6. Check inside any of the .dart files inside the i10n folder to see if the new translations were added successfully.
