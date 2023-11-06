import "package:flutter/material.dart";

import "core/translations/translation_keys.dart";
import "src/app.dart";



late TranslationKeys translationKeys;

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  translationKeys = TranslationKeys();
  await translationKeys.load();

  runApp(const MyApp());
}
