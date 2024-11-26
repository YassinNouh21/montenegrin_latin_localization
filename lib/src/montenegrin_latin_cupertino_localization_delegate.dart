import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart'
    as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

/// A custom set of date patterns for the `me` locale.
///
/// These are tailored for Montenegrin (Latin) to ensure accurate date formatting.
const montenegrinLocaleDatePatterns = {
  'd': 'd.',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
  'LLLL': 'LLLL',
  'M': 'L.',
  'Md': 'd.M.',
  'MEd': 'EEE d.M.',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M.y',
  'yMd': 'd.M.y',
  'yMEd': 'EEE d.MM.y',
  'yMMM': 'MMM y',
  'yMMMd': 'd. MMM y',
  'yMMMEd': 'EEE d. MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd. MMMM y',
  'yMMMMEEEEd': 'EEEE d. MMMM y',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'HH',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'HH',
  'jm': 'HH:mm',
  'jms': 'HH:mm:ss',
  'jmv': 'HH:mm v',
  'jmz': 'HH:mm z',
  'jz': 'HH z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

/// A custom set of date symbols for the `me` locale.
///
/// These symbols are configured for Montenegrin (Latin) to ensure accurate localization.
const montenegrinDateSymbols = {
  'NAME': 'me',
  'ERAS': ['p. n.e.', 'n.e.'],
  'ERANAMES': ['Prije nove ere', 'Nove ere'],
  'NARROWMONTHS': [
    'J',
    'F',
    'M',
    'A',
    'M',
    'J',
    'J',
    'A',
    'S',
    'O',
    'N',
    'D'
  ],
  'STANDALONENARROWMONTHS': [
    'J',
    'F',
    'M',
    'A',
    'M',
    'J',
    'J',
    'A',
    'S',
    'O',
    'N',
    'D'
  ],
  'MONTHS': [
    'januar',
    'februar',
    'mart',
    'april',
    'maj',
    'juni',
    'juli',
    'avgust',
    'septembar',
    'oktobar',
    'novembar',
    'decembar'
  ],
  'STANDALONEMONTHS': [
    'januar',
    'februar',
    'mart',
    'april',
    'maj',
    'juni',
    'juli',
    'avgust',
    'septembar',
    'oktobar',
    'novembar',
    'decembar'
  ],
  'SHORTMONTHS': [
    'jan',
    'feb',
    'mar',
    'apr',
    'maj',
    'jun',
    'jul',
    'avg',
    'sep',
    'okt',
    'nov',
    'dec'
  ],
  'STANDALONESHORTMONTHS': [
    'jan',
    'feb',
    'mar',
    'apr',
    'maj',
    'jun',
    'jul',
    'avg',
    'sep',
    'okt',
    'nov',
    'dec'
  ],
  'WEEKDAYS': [
    'nedjelja',
    'ponedjeljak',
    'utorak',
    'srijeda',
    'četvrtak',
    'petak',
    'subota'
  ],
  'STANDALONEWEEKDAYS': [
    'nedjelja',
    'ponedjeljak',
    'utorak',
    'srijeda',
    'četvrtak',
    'petak',
    'subota'
  ],
  'SHORTWEEKDAYS': ['ned', 'pon', 'uto', 'sri', 'čet', 'pet', 'sub'],
  'STANDALONESHORTWEEKDAYS': [
    'ned',
    'pon',
    'uto',
    'sri',
    'čet',
    'pet',
    'sub'
  ],
  'NARROWWEEKDAYS': ['N', 'P', 'U', 'S', 'Č', 'P', 'S'],
  'STANDALONENARROWWEEKDAYS': ['N', 'P', 'U', 'S', 'Č', 'P', 'S'],
  'SHORTQUARTERS': ['Q1', 'Q2', 'Q3', 'Q4'],
  'QUARTERS': [
    '1. kvartal',
    '2. kvartal',
    '3. kvartal',
    '4. kvartal'
  ],
  'AMPMS': ['prijepodne', 'popodne'],
  'DATEFORMATS': [
    'EEEE, d. MMMM y.',
    'd. MMMM y.',
    'd. MM. y.',
    'd. M. y.'
  ],
  'TIMEFORMATS': ['HH:mm:ss zzzz', 'HH:mm:ss z', 'HH:mm:ss', 'HH:mm'],
  'AVAILABLEFORMATS': null,
  'DATETIMEFORMATS': [
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
  'ZERODIGIT': '0',
  'FIRSTDAYOFWEEK': 1, // Monday
  'WEEKENDRANGE': [5, 6], // Saturday, Sunday
  'FIRSTWEEKCUTOFFDAY': 3
};

// Delegate
class MontenegrinLatinCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const MontenegrinLatinCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      locale.languageCode == 'me' &&
      (locale.scriptCode == 'Latn' || locale.scriptCode == null);

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName =
        intl.Intl.canonicalizedLocale(locale.toString());
    // Initialize custom date symbols and patterns for Montenegrin (Latin).
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: montenegrinLocaleDatePatterns,
      symbols:
          intl.DateSymbols.deserializeFromMap(montenegrinDateSymbols),
    );

    return SynchronousFuture<CupertinoLocalizations>(
      MontenegrinLatinCupertinoLocalizations(
        localeName: localeName,
        decimalFormat: intl.NumberFormat('#,##0.###', 'me'),
        fullYearFormat: intl.DateFormat('y', localeName),
        dayFormat: intl.DateFormat('yMd', localeName),
        doubleDigitMinuteFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        singleDigitHourFormat:
            intl.DateFormat('EEEE, MMMM d, y', localeName),
        singleDigitMinuteFormat:
            intl.DateFormat('MMMM y', localeName),
        singleDigitSecondFormat: intl.DateFormat('MMM d', localeName),
      ),
    );
  }

  @override
  bool shouldReload(
          MontenegrinLatinCupertinoLocalizationsDelegate old) =>
      false;
}

/// A custom set of localizations for the 'me' locale. In this example, various
/// UI elements have been translated to Montenegrin (Latin).
class MontenegrinLatinCupertinoLocalizations
    extends GlobalCupertinoLocalizations {
  const MontenegrinLatinCupertinoLocalizations({
    super.localeName = 'me',
    required super.fullYearFormat,
    required super.mediumDateFormat,
    required super.decimalFormat,
    required super.dayFormat,
    required super.doubleDigitMinuteFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.singleDigitSecondFormat,
  });

  // Translated Strings

  @override
  String get alertDialogLabel => 'Upozorenje';

  @override
  String get anteMeridiemAbbreviation => 'prijepodne';

  @override
  String get copyButtonLabel => 'Kopiraj';

  @override
  String get cutButtonLabel => 'Iseci';

  @override
  String get modalBarrierDismissLabel => 'Zatvori';

  @override
  String get pasteButtonLabel => 'Zalijepi';

  @override
  String get postMeridiemAbbreviation => 'popodne';

  @override
  String get selectAllButtonLabel => 'Odaberi sve';

  static const LocalizationsDelegate<CupertinoLocalizations>
      delegate = MontenegrinLatinCupertinoLocalizationsDelegate();

  @override
  String get datePickerDateOrderString => "Odaberi datum";

  @override
  String get datePickerDateTimeOrderString => "Odaberi vrijeme";

  @override
  String? get datePickerHourSemanticsLabelOther => "Odaberi sate";

  @override
  String? get datePickerMinuteSemanticsLabelOther => "Odaberi minute";

  @override
  String get searchTextFieldPlaceholderLabel => "Pretraži";

  @override
  String get tabSemanticsLabelRaw => "Kartica";

  @override
  String? get timerPickerHourLabelOther => "Odaberi sate";

  @override
  String? get timerPickerMinuteLabelOther => "Odaberi minute";

  @override
  String? get timerPickerSecondLabelOther => "Odaberi sekunde";

  @override
  String get todayLabel => "Danas";

  @override
  String get noSpellCheckReplacementsLabel =>
      "Nema zamjena za provjeru pravopisa";

  @override
  String get lookUpButtonLabel => 'Potraži';

  @override
  String get menuDismissLabel => 'Zatvori meni';

  @override
  String get searchWebButtonLabel => 'Pretraži web';

  @override
  String get shareButtonLabel => 'Podijeli';

  @override
  String get clearButtonLabel => 'Očisti';
}
