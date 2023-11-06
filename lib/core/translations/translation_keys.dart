
import "dart:convert";

import "package:flutter/services.dart";
import "package:get/get.dart";

class TranslationKeys extends Translations {
  var enKeys = <String, String>{};
  var ptKeys = <String, String>{};

  Future<void> load() async {
    ptKeys = Map<String, String>.from(jsonDecode(
        await rootBundle.loadString("assets/translations/pt_BR.json")));
    enKeys = Map<String, String>.from(jsonDecode(
        await rootBundle.loadString("assets/translations/en_US.json")));
  }

  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": enKeys,
        "pt_BR": ptKeys,
      };
}
