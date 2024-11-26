import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart'
    as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

const meDateSymbols = {
  'NAME': 'me',
  'ERAS': ['p.n.e.', 'n.e.'],
  'ERANAMES': ['Prije nove ere', 'Nove ere'],
  'MONTHS': [
    'Januar',
    'Februar',
    'Mart',
    'April',
    'Maj',
    'Jun',
    'Jul',
    'Avgust',
    'Septembar',
    'Oktobar',
    'Novembar',
    'Decembar',
  ],
  'SHORTMONTHS': [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'Maj',
    'Jun',
    'Jul',
    'Avg',
    'Sep',
    'Okt',
    'Nov',
    'Dec',
  ],
  'WEEKDAYS': [
    'Nedjelja',
    'Ponedjeljak',
    'Utorak',
    'Srijeda',
    'Četvrtak',
    'Petak',
    'Subota',
  ],
  'SHORTWEEKDAYS': [
    'Ned',
    'Pon',
    'Uto',
    'Sri',
    'Čet',
    'Pet',
    'Sub',
  ],
};

const meLocaleDatePatterns = {
  'y': 'y',
  'MMMM': 'LLLL',
  'yMMMM': 'MMMM y',
  'yMMMd': 'd. MMM y',
  'yMd': 'd.MM.y',
  'MMMMEEEEd': 'EEEE, d. MMMM y',
};

class _MontenegrinLatinMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _MontenegrinLatinMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'me';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    const localeName = 'me';

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: meLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(meDateSymbols),
    );
    return SynchronousFuture<MaterialLocalizations>(
      MontenegrinLatinMaterialLocalizations(
        fullYearFormat: intl.DateFormat('y', localeName),
        shortDateFormat: intl.DateFormat('dd.MM.yy', localeName),
        compactDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        shortMonthDayFormat: intl.DateFormat('dd.MM', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat:
            intl.DateFormat('EEEE, d. MMMM y.', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        decimalFormat: intl.NumberFormat('#,##0.###', 'me'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'me'),
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
    super.localeName = 'me',
    required super.fullYearFormat,
    required super.shortDateFormat,
    required super.compactDateFormat,
    required super.shortMonthDayFormat,
    required super.mediumDateFormat,
    required super.longDateFormat,
    required super.yearMonthFormat,
    required super.decimalFormat,
    required super.twoDigitZeroPaddedFormat,
  });

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _MontenegrinLatinMaterialLocalizationsDelegate();

  @override
  String get aboutListTileTitleRaw =>
      'O aplikaciji \$applicationName';

  @override
  String get alertDialogLabel => 'Upozorenje';

  @override
  String get anteMeridiemAbbreviation => 'AM';

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
  String get dateOutOfRangeLabel => 'Van opsega';

  @override
  String get datePickerHelpText => 'Izaberite datum';

  @override
  String get dateRangeEndDateSemanticLabelRaw =>
      'Krajnji datum \$fullDate';

  @override
  String get dateRangeEndLabel => 'Krajnji datum';

  @override
  String get dateRangePickerHelpText => 'Izaberite vremenski opseg';

  @override
  String get dateRangeStartDateSemanticLabelRaw =>
      'Početni datum \$fullDate';

  @override
  String get dateRangeStartLabel => 'Početni datum';

  @override
  String get dateSeparator => '.';

  @override
  String get deleteButtonTooltip => 'Obriši';

  @override
  String get dialogLabel => 'Dijalog';

  @override
  String get drawerLabel => 'Navigacija';

  @override
  String get expandedIconTapHint => 'Smanji';

  @override
  String get hideAccountsLabel => 'Sakrij račune';

  @override
  String get invalidDateFormatLabel => 'Pogrešan format datuma.';

  @override
  String get invalidDateRangeLabel => 'Nevažeći opseg datuma.';

  @override
  String get licensesPageTitle => 'Licence';

  @override
  String get menuDismissLabel => 'Zatvori meni';

  @override
  String get okButtonLabel => 'U redu';

  @override
  String get reorderItemDown => 'Pomjeri dolje';

  @override
  String get reorderItemLeft => 'Pomjeri lijevo';

  @override
  String get reorderItemRight => 'Pomjeri desno';

  @override
  String get reorderItemToEnd => 'Pomjeri na kraj';

  @override
  String get reorderItemToStart => 'Pomjeri na početak';

  @override
  String get reorderItemUp => 'Pomjeri gore';

  @override
  String get saveButtonLabel => 'Sačuvaj';

  @override
  String get searchFieldLabel => 'Pretraga';

  @override
  String get selectYearSemanticsLabel => 'Izaberite godinu';

  @override
  String get showAccountsLabel => 'Prikaži račune';

  @override
  String get signedInLabel => 'Prijavljen';

  @override
  String get tabLabelRaw => 'Kartica \$tabIndex od \$tabCount';

  @override
  String get timePickerDialHelpText => 'Izaberite vrijeme';

  @override
  String get timePickerHourLabel => 'Sati';

  @override
  String get timePickerMinuteLabel => 'Minute';

  @override
  String get unspecifiedDate => 'Datum';

  @override
  String get unspecifiedDateRange => 'Opseg datuma';

  @override
  String get viewLicensesButtonLabel => 'Pogledajte licence';

  // Implemented getters below

  @override
  String get bottomSheetLabel => 'Donji list';

  @override
  String get clearButtonTooltip => 'Očisti';

  @override
  String get collapsedHint => 'Sažeto';

  @override
  String get currentDateLabel => 'Trenutni datum';

  @override
  String get dialModeButtonLabel => 'Način dijaloga';

  @override
  String get expandedHint => 'Prošireno';

  @override
  String get expansionTileCollapsedHint => 'Kartica sažeta';

  @override
  String get expansionTileCollapsedTapHint =>
      'Dodirnite za proširenje';

  @override
  String get expansionTileExpandedHint => 'Kartica proširena';

  @override
  String get expansionTileExpandedTapHint => 'Dodirnite za smanjenje';

  @override
  String get firstPageTooltip => 'Prva stranica';

  @override
  String get inputDateModeButtonLabel => 'Unesite datum';

  @override
  String get inputTimeModeButtonLabel => 'Unesite vrijeme';

  @override
  String get invalidTimeLabel => 'Nevažeće vrijeme';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'Alt graf';

  @override
  String get keyboardKeyBackspace => 'Backspace';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Kanal dole';

  @override
  String get keyboardKeyChannelUp => 'Kanal gore';

  @override
  String get keyboardKeyControl => 'Control';

  @override
  String get keyboardKeyDelete => 'Delete';

  @override
  String get keyboardKeyEject => 'Eject';

  @override
  String get keyboardKeyEnd => 'End';

  @override
  String get keyboardKeyEscape => 'Escape';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Home';

  @override
  String get keyboardKeyInsert => 'Insert';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Meta MacOS';

  @override
  String get keyboardKeyMetaWindows => 'Meta Windows';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'Numpad 0';

  @override
  String get keyboardKeyNumpad1 => 'Numpad 1';

  @override
  String get keyboardKeyNumpad2 => 'Numpad 2';

  @override
  String get keyboardKeyNumpad3 => 'Numpad 3';

  @override
  String get keyboardKeyNumpad4 => 'Numpad 4';

  @override
  String get keyboardKeyNumpad5 => 'Numpad 5';

  @override
  String get keyboardKeyNumpad6 => 'Numpad 6';

  @override
  String get keyboardKeyNumpad7 => 'Numpad 7';

  @override
  String get keyboardKeyNumpad8 => 'Numpad 8';

  @override
  String get keyboardKeyNumpad9 => 'Numpad 9';

  @override
  String get keyboardKeyNumpadAdd => 'Numpad Add';

  @override
  String get keyboardKeyNumpadComma => 'Numpad Comma';

  @override
  String get keyboardKeyNumpadDecimal => 'Numpad Decimal';

  @override
  String get keyboardKeyNumpadDivide => 'Numpad Divide';

  @override
  String get keyboardKeyNumpadEnter => 'Numpad Enter';

  @override
  String get keyboardKeyNumpadEqual => 'Numpad Equal';

  @override
  String get keyboardKeyNumpadMultiply => 'Numpad Multiply';

  @override
  String get keyboardKeyNumpadParenLeft => 'Numpad Paren Left';

  @override
  String get keyboardKeyNumpadParenRight => 'Numpad Paren Right';

  @override
  String get keyboardKeyNumpadSubtract => 'Numpad Subtract';

  @override
  String get keyboardKeyPageDown => 'Page Down';

  @override
  String get keyboardKeyPageUp => 'Page Up';

  @override
  String get keyboardKeyPower => 'Power';

  @override
  String get keyboardKeyPowerOff => 'Power Off';

  @override
  String get keyboardKeyPrintScreen => 'Print Screen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'Select';

  @override
  String get keyboardKeyShift => 'Shift';

  @override
  String get keyboardKeySpace => 'Space';

  @override
  String get lastPageTooltip => 'Posljednja stranica';

  @override
  String get licensesPackageDetailTextOther => 'Ostalo';

  @override
  String get lookUpButtonLabel => 'Pretraži';

  @override
  String get menuBarMenuLabel => 'Meni traka';

  @override
  String get modalBarrierDismissLabel => 'Zatvori dijalog';

  @override
  String get moreButtonTooltip => 'Više';

  @override
  String get nextMonthTooltip => 'Slijedeći mjesec';

  @override
  String get nextPageTooltip => 'Slijedeća stranica';

  @override
  String get openAppDrawerTooltip => 'Otvori navigaciju';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      'Približan broj redova';

  @override
  String get pageRowsInfoTitleRaw => 'Broj redova';

  @override
  String get pasteButtonLabel => 'Zalijepi';

  @override
  String get popupMenuLabel => 'Podizborni meni';

  @override
  String get postMeridiemAbbreviation => 'PM';

  @override
  String get previousMonthTooltip => 'Prethodni mjesec';

  @override
  String get previousPageTooltip => 'Prethodna stranica';

  @override
  String get refreshIndicatorSemanticLabel => 'Osvježi';

  @override
  String get remainingTextFieldCharacterCountOther =>
      'Preostali znakovi';

  @override
  String get rowsPerPageTitle => 'Redova po stranici';

  @override
  String get scanTextButtonLabel => 'Skeniraj tekst';

  @override
  String get scrimLabel => 'Scrim';

  @override
  String get scrimOnTapHintRaw => 'Dodirnite za zatvaranje';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchWebButtonLabel => 'Pretraži web';

  @override
  String get selectAllButtonLabel => 'Označi sve';

  @override
  String get selectedDateLabel => 'Označeni datum';

  @override
  String get selectedRowCountTitleOther =>
      '\$selectedRowCount od \$rowCount označeno';

  @override
  String get shareButtonLabel => 'Podijeli';

  @override
  String get showMenuTooltip => 'Prikaži meni';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw =>
      TimeOfDayFormat.h_colon_mm_space_a;

  @override
  String get timePickerHourModeAnnouncement => 'Izaberite sate';

  @override
  String get timePickerInputHelpText => 'Unesite vrijeme';

  @override
  String get timePickerMinuteModeAnnouncement => 'Izaberite minute';
}
