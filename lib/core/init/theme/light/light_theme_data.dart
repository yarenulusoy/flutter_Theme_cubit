import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/app_constant.dart';
import '../../../constants/color_constants.dart';
import 'i_light_text_theme.dart';

class AppThemeLight with ILightTheme {
  static AppThemeLight? _instance;

  static AppThemeLight get instance {
    return _instance ??= AppThemeLight._init();
  }

  AppThemeLight._init();

  ThemeData get theme => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    switchTheme: switchTheme(),
    textTheme: textTheme(),

    );

  /*ThemeData get theme => ThemeData(
      canvasColor: Colors.white,
      useMaterial3: true,
      fontFamily: AppConstants.instance.fontFamily,
      textTheme: textTheme(),
      cardTheme: cardTheme(),
      switchTheme: switchTheme(),
      appBarTheme: appBarTheme(),
      toggleButtonsTheme: toggleButtonsTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      scaffoldBackgroundColor: ColorConstants.instance.white,
      floatingActionButtonTheme: fabTheme(),
      elevatedButtonTheme: elevatedButtonTheme(),
      buttonTheme: buttonTheme(),
      popupMenuTheme: popupMenuTheme(),
      // iconTheme: IconThemeData(color: ColorConstants.instance.dodgerBlue),
      colorScheme: colorScheme(),
      dataTableTheme: dataTableTheme(),
      sliderTheme: SliderThemeData(
        activeTrackColor: ColorConstants.instance.cyan,
        inactiveTrackColor: ColorConstants.instance.gray,
        thumbColor: ColorConstants.instance.cyan,
        trackHeight: 2,
        valueIndicatorColor: ColorConstants.instance.cyan,
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
      ),
      drawerTheme: drawerTheme(),
      dividerTheme: dividerTheme());*/

  DividerThemeData dividerTheme() {
    return DividerThemeData(
      color: ColorConstants.instance.gray,
    );
  }

  CardTheme cardTheme() {
    return ThemeData.light().cardTheme.copyWith(
          color: ColorConstants.instance.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        );
  }

  SwitchThemeData switchTheme() {
    return SwitchThemeData(
      thumbColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return ColorConstants.instance.white;
        }
        if (states.contains(MaterialState.disabled)) {
          return ColorConstants.instance.gray;
        }
        return null;
      }),
      trackColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return ColorConstants.instance.cyan;
        }
        if (states.contains(MaterialState.disabled)) {
          return ColorConstants.instance.gray;
        }
        return null;
      }),
    );
  }

  DrawerThemeData drawerTheme() {
    return const DrawerThemeData(
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  PopupMenuThemeData popupMenuTheme() {
    return PopupMenuThemeData(
      position: PopupMenuPosition.under,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  ToggleButtonsThemeData toggleButtonsTheme() {
    return ToggleButtonsThemeData(
      borderColor: ColorConstants.instance.gray,
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      selectedBorderColor: ColorConstants.instance.gray,
      selectedColor: ColorConstants.instance.cyan,
      fillColor: ColorConstants.instance.gray,
      color: Colors.black,
      textStyle: textThemeLight!.labelLarge
          .copyWith(color: ColorConstants.instance.gray),
    );
  }

  ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.instance.cyan,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        minimumSize: const Size(48, 48),
      ),
    );
  }

  DataTableThemeData dataTableTheme() {
    return DataTableThemeData(
      headingRowColor: MaterialStateProperty.all(
        ColorConstants.instance.gray,
      ),
      dataRowColor: MaterialStateProperty.all(
        Colors.transparent,
      ),
      checkboxHorizontalMargin: 2,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      headingTextStyle: textThemeLight!.bodyMedium,
      dataTextStyle: textThemeLight!.bodyMedium,
      dividerThickness: 1,
      dataRowHeight: 100,
      headingRowHeight: 100,
      horizontalMargin: 24,
      columnSpacing: 50,
    );
  }

  ColorScheme colorScheme() {
    return ThemeData.light().colorScheme.copyWith(
        primary: ColorConstants.instance.cyan,
        secondary: ColorConstants.instance.gray,
        onPrimary: ColorConstants.instance.gray,
        onSecondary: ColorConstants.instance.white, //container
        onSurface: ColorConstants.instance.gray,
        onBackground: ColorConstants.instance.gray,
        onError: ColorConstants.instance.white,
        background: ColorConstants.instance.white,
        surface: ColorConstants.instance.gray,
        errorContainer: ColorConstants.instance.blue,
        onErrorContainer: ColorConstants.instance.blue,
        inversePrimary: ColorConstants.instance.transparent,
        error: ColorConstants.instance.red,
        scrim: ColorConstants.instance.gray,
        inverseSurface: ColorConstants.instance.green,
        onInverseSurface: ColorConstants.instance.green,
        onPrimaryContainer: ColorConstants.instance.transparent,
        primaryContainer: ColorConstants.instance.gray,
        secondaryContainer: ColorConstants.instance.gray,
        onSecondaryContainer: ColorConstants.instance.transparent,
        );
  }

  FloatingActionButtonThemeData fabTheme() =>
      ThemeData.light().floatingActionButtonTheme.copyWith();

  ButtonThemeData buttonTheme() {
    return ThemeData.light().buttonTheme.copyWith(
        // buttonColor: ColorConstants.instance.paleSky,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        height: 48,
        minWidth: 48,
        // disabledColor: ColorConstants.instance.paleSky,
        colorScheme: ThemeData.light().colorScheme.copyWith(
            // primary: ColorConstants.instance.shark,
            // secondary: ColorConstants.instance.shark,
            ));
  }

  DropdownMenuThemeData dropdownMenuTheme() {
    return DropdownMenuThemeData(
      inputDecorationTheme: inputDecorationTheme(),
      textStyle: textThemeLight!.bodyMedium,
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
        suffixIconColor: ColorConstants.instance.gray,
        focusColor: ColorConstants.instance.cyan,
        floatingLabelStyle: textThemeLight!.bodyLarge.copyWith(
          color: ColorConstants.instance.cyan,
        ),
        labelStyle: textThemeLight!.bodyLarge.copyWith(
          color: ColorConstants.instance.gray,
        ),
        contentPadding: EdgeInsets.zero,
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            borderSide:
                BorderSide(width: 2, color: ColorConstants.instance.cyan)),
        enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: ColorConstants.instance.gray)),
        border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: ColorConstants.instance.gray)),
        errorStyle:
            TextStyle(color: ColorConstants.instance.red, fontSize: 10),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(
            width: 2,
            color: ColorConstants.instance.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            borderSide:
                BorderSide(width: 2, color: ColorConstants.instance.red)));
  }

  AppBarTheme appBarTheme() {
    return ThemeData.light().appBarTheme.copyWith(
        centerTitle: true,
        titleTextStyle: textThemeLight!.titleLarge
            .copyWith(color: ColorConstants.instance.gray),
        color: ColorConstants.instance.gray,
        elevation: 0,
        iconTheme:
            IconThemeData(color: ColorConstants.instance.gray, size: 21),
        systemOverlayStyle: SystemUiOverlayStyle.dark);
  }

  TextTheme textTheme() {
    return TextTheme(
      bodyLarge: textThemeLight!.bodyLarge,
      bodyMedium: textThemeLight!.bodyMedium,
      bodySmall: textThemeLight!.bodySmall,
      headlineSmall: textThemeLight!.headlineSmall,
      labelLarge: textThemeLight!.labelLarge,
      labelMedium: textThemeLight!.labelMedium,
      labelSmall: textThemeLight!.labelSmall,
      titleLarge: textThemeLight!.titleLarge,
      titleMedium: textThemeLight!.titleMedium,
      titleSmall: textThemeLight!.titleSmall,
    );
  }
}
