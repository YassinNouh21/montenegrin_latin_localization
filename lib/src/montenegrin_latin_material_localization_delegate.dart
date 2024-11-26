import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart'
    as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

class _MontenegrinLatinMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _MontenegrinLatinMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'cnr';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    const localeName = 'cnr';

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: cnrLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(cnrDateSymbols),
    );
    return SynchronousFuture<MaterialLocalizations>(
      MontenegrinLatinMaterialLocalizations(
        fullYearFormat: intl.DateFormat('y', localeName),
        shortDateFormat: intl.DateFormat('dd.MM.yy', localeName),
        compactDateFormat: intl.DateFormat('EEE, d. MMM', localeName),
        shortMonthDayFormat: intl.DateFormat('dd.MM.', localeName),
        mediumDateFormat: intl.DateFormat('EEE, d. MMM', localeName),
        longDateFormat:
            intl.DateFormat('EEEE, d. MMMM y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        decimalFormat: intl.NumberFormat('#,##0.###', localeName),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', localeName),
      ),
    );
  }

  @override
  bool shouldReload(
          _MontenegrinLatinMaterialLocalizationsDelegate old) =>
      false;
}

class MontenegrinLatinMaterialLocalizations
    extends GlobalMaterialLocalizations {
  const MontenegrinLatinMaterialLocalizations({
    String localeName = 'cnr',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat shortDateFormat,
    required intl.DateFormat compactDateFormat,
    required intl.DateFormat shortMonthDayFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat longDateFormat,
    required intl.DateFormat yearMonthFormat,
    required intl.NumberFormat decimalFormat,
    required intl.NumberFormat twoDigitZeroPaddedFormat,
  }) : super(
          localeName: localeName,
          fullYearFormat: fullYearFormat,
          shortDateFormat: shortDateFormat,
          compactDateFormat: compactDateFormat,
          shortMonthDayFormat: shortMonthDayFormat,
          mediumDateFormat: mediumDateFormat,
          longDateFormat: longDateFormat,
          yearMonthFormat: yearMonthFormat,
          decimalFormat: decimalFormat,
          twoDigitZeroPaddedFormat: twoDigitZeroPaddedFormat,
        );

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _MontenegrinLatinMaterialLocalizationsDelegate();

  @override
  String get aboutListTileTitleRaw =>
      'O aplikaciji \$applicationName';

  @override
  String get alertDialogLabel => 'Obavještenje';

  @override
  String get anteMeridiemAbbreviation => 'prije podne';

  @override
  String get backButtonTooltip => 'Nazad';

  @override
  String get calendarModeButtonLabel => 'Prebaci na kalendar';

  @override
  String get cancelButtonLabel => 'Otkaži';

  @override
  String get closeButtonLabel => 'Zatvori';

  @override
  String get closeButtonTooltip => 'Zatvori';

  @override
  String get collapsedIconTapHint => 'Proširi';

  @override
  String get continueButtonLabel => 'Nastavi';

  @override
  String get copyButtonLabel => 'Kopiraj';

  @override
  String get cutButtonLabel => 'Isijeci';

  @override
  String get dateHelpText => 'dd.mm.gggg';

  @override
  String get dateInputLabel => 'Unesite datum';

  @override
  String get dateOutOfRangeLabel => 'Izvan opsega';

  @override
  String get datePickerHelpText => 'Izaberite datum';

  @override
  String get dateRangeEndDateSemanticLabelRaw =>
      'Datum završetka \$fullDate';

  @override
  String get dateRangeEndLabel => 'Datum završetka';

  @override
  String get dateRangePickerHelpText => 'Izaberite opseg';

  @override
  String get dateRangeStartDateSemanticLabelRaw =>
      'Datum početka \$fullDate';

  @override
  String get dateRangeStartLabel => 'Datum početka';

  @override
  String get dateSeparator => '.';

  @override
  String get deleteButtonTooltip => 'Izbriši';

  @override
  String get dialModeButtonLabel => 'Prebaci na režim birača';

  @override
  String get dialogLabel => 'Dijalog';

  @override
  String get drawerLabel => 'Meni za navigaciju';

  @override
  String get expandedIconTapHint => 'Skupi';

  @override
  String get hideAccountsLabel => 'Sakrij naloge';

  @override
  String get inputDateModeButtonLabel => 'Prebaci na unos';

  @override
  String get inputTimeModeButtonLabel =>
      'Prebaci na režim unosa teksta';

  @override
  String get invalidDateFormatLabel => 'Nevažeći format';

  @override
  String get invalidDateRangeLabel => 'Nevažeći opseg';

  @override
  String get invalidTimeLabel => 'Unesite važeće vrijeme';

  @override
  String get licensesPackageDetailTextOne => '1 licenca';

  @override
  String get licensesPackageDetailTextOther =>
      '\$licenseCount licenci';

  @override
  String get licensesPackageDetailTextZero => 'Nema licenci';

  @override
  String get licensesPageTitle => 'Licence';

  @override
  String get modalBarrierDismissLabel => 'Odbaci';

  @override
  String get moreButtonTooltip => 'Još';

  @override
  String get nextMonthTooltip => 'Sljedeći mjesec';

  @override
  String get nextPageTooltip => 'Sljedeća stranica';

  @override
  String get okButtonLabel => 'U redu';

  @override
  String get openAppDrawerTooltip => 'Otvori meni za navigaciju';

  @override
  String get pageRowsInfoTitleRaw =>
      '\$firstRow–\$lastRow od \$rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      '\$firstRow–\$lastRow od oko \$rowCount';

  @override
  String get pasteButtonLabel => 'Nalijepi';

  @override
  String get popupMenuLabel => 'Iskačući meni';

  @override
  String get postMeridiemAbbreviation => 'po podne';

  @override
  String get previousMonthTooltip => 'Prethodni mjesec';

  @override
  String get previousPageTooltip => 'Prethodna stranica';

  @override
  String get refreshIndicatorSemanticLabel => 'Osvježi';

  @override
  String? get remainingTextFieldCharacterCountFew =>
      'Preostala \$remainingCount karaktera';

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String get remainingTextFieldCharacterCountOne =>
      'Preostao 1 karakter';

  @override
  String get remainingTextFieldCharacterCountOther =>
      'Preostalo \$remainingCount karaktera';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String get remainingTextFieldCharacterCountZero =>
      'Nema preostalih karaktera';

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

  @override
  String get rowsPerPageTitle => 'Redova po stranici:';

  @override
  String get saveButtonLabel => 'Sačuvaj';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => 'Pretraži';

  @override
  String get selectAllButtonLabel => 'Izaberi sve';

  @override
  String get selectYearSemanticsLabel => 'Izaberite godinu';

  @override
  String? get selectedRowCountTitleFew =>
      'Izabrane \$selectedRowCount stavke';

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String get selectedRowCountTitleOne => 'Izabrana 1 stavka';

  @override
  String get selectedRowCountTitleOther =>
      'Izabrano \$selectedRowCount stavki';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String get selectedRowCountTitleZero =>
      'Nije izabrana nijedna stavka';

  @override
  String get showAccountsLabel => 'Prikaži naloge';

  @override
  String get showMenuTooltip => 'Prikaži meni';

  @override
  String get signedInLabel => 'Prijavljeni';

  @override
  String get tabLabelRaw => 'Kartica \$tabIndex od \$tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw =>
      TimeOfDayFormat.HH_colon_mm;

  @override
  String get timePickerDialHelpText => 'Izaberite vrijeme';

  @override
  String get timePickerHourLabel => 'Sat';

  @override
  String get timePickerHourModeAnnouncement => 'Izaberite sate';

  @override
  String get timePickerInputHelpText => 'Unesite vrijeme';

  @override
  String get timePickerMinuteLabel => 'Minut';

  @override
  String get timePickerMinuteModeAnnouncement => 'Izaberite minute';

  @override
  String get unspecifiedDate => 'Datum';

  @override
  String get unspecifiedDateRange => 'Period';

  @override
  String get viewLicensesButtonLabel => 'Prikaži licence';

  @override
  List<String> get narrowWeekdays =>
      ['N', 'P', 'U', 'S', 'Č', 'P', 'S'];

  @override
  String get firstPageTooltip => 'Prva stranica';

  @override
  String get lastPageTooltip => 'Posljednja stranica';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'Backspace';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Kanal dolje';

  @override
  String get keyboardKeyChannelUp => 'Kanal gore';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Delete';

  @override
  String get keyboardKeyEject => 'Izbaci';

  @override
  String get keyboardKeyEnd => 'End';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Home';

  @override
  String get keyboardKeyInsert => 'Insert';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Command';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'Num 0';

  @override
  String get keyboardKeyNumpad1 => 'Num 1';

  @override
  String get keyboardKeyNumpad2 => 'Num 2';

  @override
  String get keyboardKeyNumpad3 => 'Num 3';

  @override
  String get keyboardKeyNumpad4 => 'Num 4';

  @override
  String get keyboardKeyNumpad5 => 'Num 5';

  @override
  String get keyboardKeyNumpad6 => 'Num 6';

  @override
  String get keyboardKeyNumpad7 => 'Num 7';

  @override
  String get keyboardKeyNumpad8 => 'Num 8';

  @override
  String get keyboardKeyNumpad9 => 'Num 9';

  @override
  String get keyboardKeyNumpadAdd => 'Num +';

  @override
  String get keyboardKeyNumpadComma => 'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Num .';

  @override
  String get keyboardKeyNumpadDivide => 'Num /';

  @override
  String get keyboardKeyNumpadEnter => 'Num Enter';

  @override
  String get keyboardKeyNumpadEqual => 'Num =';

  @override
  String get keyboardKeyNumpadMultiply => 'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Num (';

  @override
  String get keyboardKeyNumpadParenRight => 'Num )';

  @override
  String get keyboardKeyNumpadSubtract => 'Num -';

  @override
  String get keyboardKeyPageDown => 'Page Down';

  @override
  String get keyboardKeyPageUp => 'Page Up';

  @override
  String get keyboardKeyPower => 'Napajanje';

  @override
  String get keyboardKeyPowerOff => 'Isključi';

  @override
  String get keyboardKeyPrintScreen => 'Print Screen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'Select';

  @override
  String get keyboardKeySpace => 'Razmak';

  @override
  String get keyboardKeyShift => 'Shift';

  @override
  String get menuBarMenuLabel => 'Meni trake menija';

  @override
  String get bottomSheetLabel => 'Donja tabla';

  @override
  String get currentDateLabel => 'Danas';

  @override
  String get scrimLabel => 'Zavjesa';

  @override
  String get scrimOnTapHintRaw =>
      'Zatvori dijalog pritiskom na zavjesu';

  @override
  String get collapsedHint => 'Prošireno';

  @override
  String get expandedHint => 'Skupljeno';

  @override
  String get expansionTileCollapsedHint =>
      'dvostruki dodir za proširivanje';

  @override
  String get expansionTileCollapsedTapHint =>
      'Proširi za više detalja';

  @override
  String get expansionTileExpandedHint =>
      'dvostruki dodir za skupljanje';

  @override
  String get expansionTileExpandedTapHint => 'Skupi';

  @override
  String get scanTextButtonLabel => 'Skeniraj tekst';

  @override
  String get lookUpButtonLabel => 'Potraži';

  @override
  String get menuDismissLabel => 'Odbaci meni';

  @override
  String get searchWebButtonLabel => 'Pretraži web';

  @override
  String get shareButtonLabel => 'Podijeli...';

  @override
  // TODO: implement clearButtonTooltip
  String get clearButtonTooltip => throw UnimplementedError();

  @override
  // TODO: implement selectedDateLabel
  String get selectedDateLabel => throw UnimplementedError();
}

const cnrDateSymbols = {
  'NAME': 'cnr',
  'ERAS': ['p.n.e.', 'n.e.'],
  'ERANAMES': ['prije nove ere', 'nove ere'],
  'NARROWMONTHS': [
    'j',
    'f',
    'm',
    'a',
    'm',
    'j',
    'j',
    'a',
    's',
    'o',
    'n',
    'd'
  ],
  'STANDALONENARROWMONTHS': [
    'j',
    'f',
    'm',
    'a',
    'm',
    'j',
    'j',
    'a',
    's',
    'o',
    'n',
    'd'
  ],
  'MONTHS': [
    'januar',
    'februar',
    'mart',
    'april',
    'maj',
    'jun',
    'jul',
    'avgust',
    'septembar',
    'oktobar',
    'novembar',
    'decembar',
  ],
  'STANDALONEMONTHS': [
    'januar',
    'februar',
    'mart',
    'april',
    'maj',
    'jun',
    'jul',
    'avgust',
    'septembar',
    'oktobar',
    'novembar',
    'decembar',
  ],
  'SHORTMONTHS': [
    'jan.',
    'feb.',
    'mart',
    'apr.',
    'maj',
    'jun',
    'jul',
    'avg.',
    'sept.',
    'okt.',
    'nov.',
    'dec.'
  ],
  'STANDALONESHORTMONTHS': [
    'jan.',
    'feb.',
    'mart',
    'apr.',
    'maj',
    'jun',
    'jul',
    'avg.',
    'sept.',
    'okt.',
    'nov.',
    'dec.'
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
  'SHORTWEEKDAYS': [
    'ned.',
    'pon.',
    'uto.',
    'sri.',
    'čet.',
    'pet.',
    'sub.'
  ],
  'STANDALONESHORTWEEKDAYS': [
    'ned.',
    'pon.',
    'uto.',
    'sri.',
    'čet.',
    'pet.',
    'sub.'
  ],
  'NARROWWEEKDAYS': ['n', 'p', 'u', 's', 'č', 'p', 's'],
  'STANDALONENARROWWEEKDAYS': ['n', 'p', 'u', 's', 'č', 'p', 's'],
  'SHORTQUARTERS': ['K1', 'K2', 'K3', 'K4'],
  'QUARTERS': [
    'prvi kvartal',
    'drugi kvartal',
    'treći kvartal',
    'četvrti kvartal'
  ],
  'AMPMS': ['prije podne', 'po podne'],
  'DATEFORMATS': [
    'EEEE, dd. MMMM y.',
    'dd. MMMM y.',
    'dd.MM.y.',
    'd.M.y.',
  ],
  'TIMEFORMATS': [
    'HH:mm:ss zzzz',
    'HH:mm:ss z',
    'HH:mm:ss',
    'HH:mm',
  ],
  'FIRSTDAYOFWEEK': 0,
  'WEEKENDRANGE': [5, 6],
  'FIRSTWEEKCUTOFFDAY': 6
};

const cnrLocaleDatePatterns = {
  'd': 'd.',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
  'LLLL': 'LLLL',
  'M': 'L.',
  'Md': 'd.M.',
  'MEd': 'EEE, d.M.',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE, d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE, d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y.',
  'yM': 'M.y.',
  'yMd': 'd.M.y.',
  'yMEd': 'EEE, d.M.y.',
  'yMMM': 'MMM y.',
  'yMMMd': 'd. MMM y.',
  'yMMMEd': 'EEE, d. MMM y.',
  'yMMMM': 'MMMM y.',
  'yMMMMd': 'd. MMMM y.',
  'yMMMMEEEEd': 'EEEE, d. MMMM y.',
  'yQQQ': 'QQQ y.',
  'yQQQQ': 'QQQQ y.',
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
  'ZZZZ': 'ZZZZ'
};
