import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0b1551),
      surfaceTint: Color(0xff515a97),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff232c67),
      onPrimaryContainer: Color(0xff8c95d7),
      secondary: Color(0xff5a5d77),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdcddfc),
      onSecondaryContainer: Color(0xff5e617b),
      tertiary: Color(0xff715d00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffeac638),
      onTertiaryContainer: Color(0xff655200),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffbf8fe),
      onSurface: Color(0xff1b1b1f),
      onSurfaceVariant: Color(0xff464650),
      outline: Color(0xff767681),
      outlineVariant: Color(0xffc6c5d1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303034),
      inversePrimary: Color(0xffbbc3ff),
      primaryFixed: Color(0xffdfe0ff),
      onPrimaryFixed: Color(0xff091350),
      primaryFixedDim: Color(0xffbbc3ff),
      onPrimaryFixedVariant: Color(0xff39427e),
      secondaryFixed: Color(0xffdfe0ff),
      onSecondaryFixed: Color(0xff171a30),
      secondaryFixedDim: Color(0xffc2c4e3),
      onSecondaryFixedVariant: Color(0xff42455e),
      tertiaryFixed: Color(0xffffe177),
      onTertiaryFixed: Color(0xff231b00),
      tertiaryFixedDim: Color(0xffe8c436),
      onTertiaryFixedVariant: Color(0xff554500),
      surfaceDim: Color(0xffdbd9df),
      surfaceBright: Color(0xfffbf8fe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f2f8),
      surfaceContainer: Color(0xfff0edf3),
      surfaceContainerHigh: Color(0xffeae7ed),
      surfaceContainerHighest: Color(0xffe4e1e7),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0b1551),
      surfaceTint: Color(0xff515a97),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff232c67),
      onPrimaryContainer: Color(0xffb3bcff),
      secondary: Color(0xff31354c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff696b86),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff423500),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff826b00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf8fe),
      onSurface: Color(0xff111115),
      onSurfaceVariant: Color(0xff35353f),
      outline: Color(0xff51525c),
      outlineVariant: Color(0xff6c6c77),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303034),
      inversePrimary: Color(0xffbbc3ff),
      primaryFixed: Color(0xff6069a7),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff47508d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff696b86),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff50536d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff826b00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff665300),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc8c5cb),
      surfaceBright: Color(0xfffbf8fe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f2f8),
      surfaceContainer: Color(0xffeae7ed),
      surfaceContainerHigh: Color(0xffdedce2),
      surfaceContainerHighest: Color(0xffd3d0d6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0b1551),
      surfaceTint: Color(0xff515a97),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff232c67),
      onPrimaryContainer: Color(0xffedecff),
      secondary: Color(0xff272b42),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff444760),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff362b00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff584800),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf8fe),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2b2b35),
      outlineVariant: Color(0xff484852),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303034),
      inversePrimary: Color(0xffbbc3ff),
      primaryFixed: Color(0xff3b4480),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff242d68),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff444760),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2e3149),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff584800),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3e3200),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbab8bd),
      surfaceBright: Color(0xfffbf8fe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f0f6),
      surfaceContainer: Color(0xffe4e1e7),
      surfaceContainerHigh: Color(0xffd6d3d9),
      surfaceContainerHighest: Color(0xffc8c5cb),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbbc3ff),
      surfaceTint: Color(0xffbbc3ff),
      onPrimary: Color(0xff222b66),
      primaryContainer: Color(0xff232c67),
      onPrimaryContainer: Color(0xff8c95d7),
      secondary: Color(0xffc2c4e3),
      onSecondary: Color(0xff2c2f46),
      secondaryContainer: Color(0xff42455e),
      onSecondaryContainer: Color(0xffb1b3d1),
      tertiary: Color(0xffffe386),
      onTertiary: Color(0xff3b2f00),
      tertiaryContainer: Color(0xffeac638),
      onTertiaryContainer: Color(0xff655200),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131317),
      onSurface: Color(0xffe4e1e7),
      onSurfaceVariant: Color(0xffc6c5d1),
      outline: Color(0xff90909b),
      outlineVariant: Color(0xff464650),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e7),
      inversePrimary: Color(0xff515a97),
      primaryFixed: Color(0xffdfe0ff),
      onPrimaryFixed: Color(0xff091350),
      primaryFixedDim: Color(0xffbbc3ff),
      onPrimaryFixedVariant: Color(0xff39427e),
      secondaryFixed: Color(0xffdfe0ff),
      onSecondaryFixed: Color(0xff171a30),
      secondaryFixedDim: Color(0xffc2c4e3),
      onSecondaryFixedVariant: Color(0xff42455e),
      tertiaryFixed: Color(0xffffe177),
      onTertiaryFixed: Color(0xff231b00),
      tertiaryFixedDim: Color(0xffe8c436),
      onTertiaryFixedVariant: Color(0xff554500),
      surfaceDim: Color(0xff131317),
      surfaceBright: Color(0xff39393d),
      surfaceContainerLowest: Color(0xff0e0e12),
      surfaceContainerLow: Color(0xff1b1b1f),
      surfaceContainer: Color(0xff1f1f23),
      surfaceContainerHigh: Color(0xff2a2a2e),
      surfaceContainerHighest: Color(0xff343439),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd7daff),
      surfaceTint: Color(0xffbbc3ff),
      onPrimary: Color(0xff161f5a),
      primaryContainer: Color(0xff838ccd),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd8daf9),
      onSecondary: Color(0xff21243b),
      secondaryContainer: Color(0xff8c8fab),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffe386),
      onTertiary: Color(0xff352b00),
      tertiaryContainer: Color(0xffeac638),
      onTertiaryContainer: Color(0xff443700),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131317),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdcdbe7),
      outline: Color(0xffb2b1bc),
      outlineVariant: Color(0xff908f9a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e7),
      inversePrimary: Color(0xff3a437f),
      primaryFixed: Color(0xffdfe0ff),
      onPrimaryFixed: Color(0xff000744),
      primaryFixedDim: Color(0xffbbc3ff),
      onPrimaryFixedVariant: Color(0xff28316c),
      secondaryFixed: Color(0xffdfe0ff),
      onSecondaryFixed: Color(0xff0c0f25),
      secondaryFixedDim: Color(0xffc2c4e3),
      onSecondaryFixedVariant: Color(0xff31354c),
      tertiaryFixed: Color(0xffffe177),
      onTertiaryFixed: Color(0xff161100),
      tertiaryFixedDim: Color(0xffe8c436),
      onTertiaryFixedVariant: Color(0xff423500),
      surfaceDim: Color(0xff131317),
      surfaceBright: Color(0xff444449),
      surfaceContainerLowest: Color(0xff07070b),
      surfaceContainerLow: Color(0xff1d1d21),
      surfaceContainer: Color(0xff27272c),
      surfaceContainerHigh: Color(0xff323237),
      surfaceContainerHighest: Color(0xff3d3d42),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffefeeff),
      surfaceTint: Color(0xffbbc3ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb6beff),
      onPrimaryContainer: Color(0xff000434),
      secondary: Color(0xffefeeff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbec0df),
      onSecondaryContainer: Color(0xff06091f),
      tertiary: Color(0xffffefc2),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffeac638),
      onTertiaryContainer: Color(0xff1a1300),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff131317),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff0effb),
      outlineVariant: Color(0xffc2c1cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e7),
      inversePrimary: Color(0xff3a437f),
      primaryFixed: Color(0xffdfe0ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffbbc3ff),
      onPrimaryFixedVariant: Color(0xff000744),
      secondaryFixed: Color(0xffdfe0ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc2c4e3),
      onSecondaryFixedVariant: Color(0xff0c0f25),
      tertiaryFixed: Color(0xffffe177),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe8c436),
      onTertiaryFixedVariant: Color(0xff161100),
      surfaceDim: Color(0xff131317),
      surfaceBright: Color(0xff504f54),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1f1f23),
      surfaceContainer: Color(0xff303034),
      surfaceContainerHigh: Color(0xff3b3b40),
      surfaceContainerHighest: Color(0xff47464b),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
