import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/// The [AppTheme] defines light and dark themes for the app.
///
/// Theme setup for FlexColorScheme package v8.
/// Use same major flex_color_scheme package version. If you use a
/// lower minor version, some properties may not be supported.
/// In that case, remove them after copying this theme to your
/// app or upgrade the package to version 8.2.0.
///
/// Use it in a [MaterialApp] like this:
///
/// MaterialApp(
///   theme: AppTheme.light,
///   darkTheme: AppTheme.dark,
/// );
abstract final class AppTheme {
  // The FlexColorScheme defined light mode ThemeData.
  static const double searchBarRadius = 24;

  static TextTheme textTheme = GoogleFonts.fredokaTextTheme();
  static ThemeData light = FlexThemeData.light(
    textTheme: textTheme,
    // User defined custom colors made with FlexSchemeColor() API.
    colors: FlexSchemeColor(
      primary: Color(0xFF272B68),
      primaryContainer: Color(0xFF5055A5),
      secondary: Color(0xFFF0C542),
      secondaryContainer: Color(0xFFFFF0BD),
      tertiary: Color(0xFF913964),
      tertiaryContainer: Color(0xFFFFD9E8),
      appBarColor: Color(0xFFFFF0BD),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
    ),
    // Input color modifiers.
    useMaterial3ErrorColors: true,
    // Surface color adjustments.
    surfaceMode: FlexSurfaceMode.level,
    blendLevel: 20,
    lightIsWhite: true,
    // Component theme configurations for light mode.
    subThemesData: FlexSubThemesData(

      interactionEffects: true,
      tintedDisabledControls: true,
      scaffoldBackgroundSchemeColor: SchemeColor.onPrimary,
      defaultRadius: 8.0,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.underline,
      alignedDropdown: true,
      appBarBackgroundSchemeColor: SchemeColor.primary,
      appBarForegroundSchemeColor: SchemeColor.onPrimary,
      appBarIconSchemeColor: SchemeColor.onPrimary,
      appBarActionsIconSchemeColor: SchemeColor.onPrimary,
      appBarCenterTitle: false,
      tabBarItemSchemeColor: SchemeColor.onPrimary,
      tabBarUnselectedItemSchemeColor: SchemeColor.onPrimary,
      tabBarIndicatorSchemeColor: SchemeColor.onPrimary,
      tabBarDividerColor: Color(0x00000000),
      searchBarElevation: 0.0,
      searchBarRadius: searchBarRadius,
      searchViewElevation: 0.0,
      searchUseGlobalShape: true,
      navigationRailUseIndicator: true,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );

  static FlexSchemeColor darkFlexColorScheme = FlexSchemeColor(
      primary: Color(0xFF9FA7FF),
      primaryContainer: Color(0xFF3A3F85),
      primaryLightRef: Color(0xFF272B68), // The color of light mode primary
      secondary: Color(0xFFFFD95E),
      secondaryContainer: Color(0xFF6D5B00),
      secondaryLightRef: Color(0xFFF0C542), // The color of light mode secondary
      tertiary: Color(0xFFFFA5C6),
      tertiaryContainer: Color(0xFF5E1F3D),
      tertiaryLightRef: Color(0xFF913964), // The color of light mode tertiary
      appBarColor: Color(0xFFFFF0BD),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
    );
  // The FlexColorScheme defined dark mode ThemeData.
  static ThemeData dark = FlexThemeData.dark(
    textTheme: textTheme,
    // User defined custom colors made with FlexSchemeColor() API.
    colors: darkFlexColorScheme,
    // Input color modifiers.
    useMaterial3ErrorColors: true,
    // Surface color adjustments.
    surfaceMode: FlexSurfaceMode.level,
    blendLevel: 20,
    surfaceTint: const Color(0xFFCCB3B7),
    // Component theme configurations for dark mode.
    subThemesData:  FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnColors: true,
      defaultRadius: 8.0,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.underline,
      alignedDropdown: true,
      appBarCenterTitle: false,
      appBarBackgroundSchemeColor: SchemeColor.surfaceDim,
      tabBarDividerColor: Color(0x00000000),
      searchBarElevation: 0.0,
      searchViewElevation: 0.0,
      searchUseGlobalShape: true,
      searchBarRadius: searchBarRadius,
      navigationRailUseIndicator: true,
    ),
    // Direct ThemeData properties.
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}
