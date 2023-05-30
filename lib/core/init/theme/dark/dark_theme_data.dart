import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/app_constant.dart';
import '../../../constants/color_constants.dart';
import 'i_dark_text_theme.dart';

class AppThemeDark with IDarkTheme {
  static AppThemeDark? _instance;

  static AppThemeDark get instance {
    return _instance ??= AppThemeDark._init();
  }

  AppThemeDark._init();
  ThemeData get theme => ThemeData(
    scaffoldBackgroundColor: Colors.blueGrey.shade800,
    switchTheme: switchTheme(),
    textTheme:textTheme()
  );


  /*
  ThemeData get theme => ThemeData(
      useMaterial3: true,
      fontFamily: AppConstants.instance.fontFamily,
      textTheme: textTheme(),
      dropdownMenuTheme: dropdownMenuTheme(),
      appBarTheme: appBarTheme(),
      iconTheme: iconTheme(),
      toggleButtonsTheme: toggleButton(),
      sliderTheme: sliderTheme(),
      cardTheme: cardTheme(),
      drawerTheme: drawerTheme(),
      popupMenuTheme: popupMenuTheme(),
      dividerTheme: dividerTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      scaffoldBackgroundColor: ColorConstants.instance.gray,
      buttonTheme: buttonTheme(),
      elevatedButtonTheme: elevatedButtonTheme(),
      colorScheme: colorScheme(),
      switchTheme: switchTheme(),
      dataTableTheme: datatableTheme());*/

  SwitchThemeData switchTheme() {
    return SwitchThemeData(
       thumbColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return ColorConstants.instance.white;
            }
            if (states.contains(MaterialState.disabled)) {
              return ColorConstants.instance.gray;
            }
            return null;
          }),
          trackColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
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

  ToggleButtonsThemeData toggleButton() {
    return ToggleButtonsThemeData(
      color: ColorConstants.instance.gray,
      selectedColor: ColorConstants.instance.cyan,
      fillColor: ColorConstants.instance.gray,
      disabledColor: ColorConstants.instance.gray,
      borderRadius: BorderRadius.circular(5),
      borderColor: ColorConstants.instance.gray,
      textStyle: textThemeDark!.labelLarge.copyWith(color: ColorConstants.instance.cyan),
      selectedBorderColor: ColorConstants.instance.gray,
      disabledBorderColor: ColorConstants.instance.gray,
    );
  }

  SliderThemeData sliderTheme() {
    return SliderThemeData(
      activeTrackColor: ColorConstants.instance.cyan,
      inactiveTrackColor: ColorConstants.instance.gray,
      thumbColor: ColorConstants.instance.cyan,
      overlayColor: ColorConstants.instance.cyan.withOpacity(0.2),
      valueIndicatorColor: ColorConstants.instance.cyan,
      trackHeight: 2,
      valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: textThemeDark!.labelLarge.copyWith(color: ColorConstants.instance.gray),
    );
  }

  DataTableThemeData datatableTheme() {
    return DataTableThemeData(
      headingRowColor: MaterialStateProperty.all(
        ColorConstants.instance.gray,
      ),
      dataRowColor: MaterialStateProperty.all(
        ColorConstants.instance.gray,
      ),
      headingTextStyle: textThemeDark!.labelMedium.copyWith(
        color: ColorConstants.instance.gray,
      ),
      dataTextStyle: textThemeDark!.labelLarge.copyWith(
        color: ColorConstants.instance.gray,
      ),
      dividerThickness: 0,
    );
  }

  DividerThemeData dividerTheme() {
    return DividerThemeData(
      color: ColorConstants.instance.gray,
    );
  }

  PopupMenuThemeData popupMenuTheme() {
    return PopupMenuThemeData(
      color: ColorConstants.instance.gray,
      position: PopupMenuPosition.under,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  DrawerThemeData drawerTheme() {
    return DrawerThemeData(
      backgroundColor: ColorConstants.instance.gray,
      elevation: 0,
    );
  }

  CardTheme cardTheme() {
    return CardTheme(
      color: ColorConstants.instance.gray,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
    );
  }

  IconThemeData iconTheme() {
    return IconThemeData(
      color: ColorConstants.instance.gray,
    );
  }

  DropdownMenuThemeData dropdownMenuTheme() {
    return DropdownMenuThemeData(
      inputDecorationTheme: inputDecorationTheme(),
      textStyle: textThemeDark!.bodyMedium,
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

  ColorScheme colorScheme() => ColorScheme.dark(
        primary: ColorConstants.instance.cyan,
        secondary: ColorConstants.instance.gray,
        surface: ColorConstants.instance.gray,
        background: ColorConstants.instance.gray,
        error: ColorConstants.instance.red,
        onPrimary: ColorConstants.instance.gray,
        onSecondary: ColorConstants.instance.gray,
        onSurface: ColorConstants.instance.gray,
        onBackground: ColorConstants.instance.gray,
        errorContainer: ColorConstants.instance.blue,
        onErrorContainer: ColorConstants.instance.gray,
        onError: ColorConstants.instance.red,
        scrim: ColorConstants.instance.gray,
        inversePrimary: ColorConstants.instance.blue,
        inverseSurface: ColorConstants.instance.green,
        onInverseSurface: ColorConstants.instance.gray,
        onPrimaryContainer: ColorConstants.instance.green,
        primaryContainer: ColorConstants.instance.gray,
        secondaryContainer: ColorConstants.instance.gray,
        onSecondaryContainer: ColorConstants.instance.gray,
      );

  ButtonThemeData buttonTheme() {
    return ThemeData.dark().buttonTheme.copyWith(
          colorScheme: const ColorScheme.dark(
              // onError: ColorConstants.instance.carnation,
              ),
        );
  }

  InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
        suffixIconColor: ColorConstants.instance.gray,
        focusColor: ColorConstants.instance.cyan,
        floatingLabelStyle: textThemeDark!.bodyLarge.copyWith(
          color: ColorConstants.instance.cyan,
        ),
        labelStyle: textThemeDark!.bodyLarge.copyWith(
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
                BorderSide(width: 1, color: ColorConstants.instance.red)));
  }

  AppBarTheme appBarTheme() {
    return ThemeData.dark().appBarTheme.copyWith(
        centerTitle: true,
        titleTextStyle: textThemeDark!.titleLarge.copyWith(
          color: ColorConstants.instance.white,
        ),
        color: ColorConstants.instance.gray,
        elevation: 0,
        iconTheme:
            IconThemeData(color: ColorConstants.instance.gray, size: 21),
        systemOverlayStyle: SystemUiOverlayStyle.light);
  }

  TextTheme textTheme() {
    return TextTheme(
      bodyMedium: textThemeDark!.bodyMedium,
      bodySmall: textThemeDark!.bodySmall,
      headlineSmall: textThemeDark!.headlineSmall,
      labelLarge: textThemeDark!.labelLarge,
      labelMedium: textThemeDark!.labelMedium,
      labelSmall: textThemeDark!.labelSmall,
      titleLarge: textThemeDark!.titleLarge,
      titleMedium: textThemeDark!.titleMedium,
      titleSmall: textThemeDark!.titleSmall,
      bodyLarge: textThemeDark!.bodyLarge,
    );
  }
}
