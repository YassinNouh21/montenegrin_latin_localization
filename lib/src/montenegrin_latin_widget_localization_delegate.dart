import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class _MontenegrinLatinWidgetLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const _MontenegrinLatinWidgetLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'cnr';

  @override
  Future<WidgetsLocalizations> load(Locale locale) async {
    return SynchronousFuture<WidgetsLocalizations>(
      MontenegrinLatinWidgetLocalizations(),
    );
  }

  @override
  bool shouldReload(
          _MontenegrinLatinWidgetLocalizationsDelegate old) =>
      false;
}

class MontenegrinLatinWidgetLocalizations
    extends WidgetsLocalizations {
  static const LocalizationsDelegate<WidgetsLocalizations> delegate =
      _MontenegrinLatinWidgetLocalizationsDelegate();

  @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get reorderItemDown => 'Pomjeri nadolje';

  @override
  String get reorderItemLeft => 'Pomjeri ulijevo';

  @override
  String get reorderItemRight => 'Pomjeri udesno';

  @override
  String get reorderItemToEnd => 'Pomjeri na kraj';

  @override
  String get reorderItemToStart => 'Pomjeri na početak';

  @override
  String get reorderItemUp => 'Pomjeri nagore';
}
