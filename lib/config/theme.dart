import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff565992),
      surfaceTint: Color(0xff565992),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffe0e0ff),
      onPrimaryContainer: Color(0xff3e4278),
      secondary: Color(0xff575992),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffe1e0ff),
      onSecondaryContainer: Color(0xff3f4178),
      tertiary: Color(0xff735b0c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffe08d),
      onTertiaryContainer: Color(0xff584400),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff1b1b21),
      onSurfaceVariant: Color(0xff46464f),
      outline: Color(0xff777680),
      outlineVariant: Color(0xffc7c5d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffbfc2ff),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff11144b),
      primaryFixedDim: Color(0xffbfc2ff),
      onPrimaryFixedVariant: Color(0xff3e4278),
      secondaryFixed: Color(0xffe1e0ff),
      onSecondaryFixed: Color(0xff12144b),
      secondaryFixedDim: Color(0xffc0c1ff),
      onSecondaryFixedVariant: Color(0xff3f4178),
      tertiaryFixed: Color(0xffffe08d),
      onTertiaryFixed: Color(0xff241a00),
      tertiaryFixedDim: Color(0xffe3c36c),
      onTertiaryFixedVariant: Color(0xff584400),
      surfaceDim: Color(0xffdcd9e0),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f2fa),
      surfaceContainer: Color(0xfff0ecf4),
      surfaceContainerHigh: Color(0xffeae7ef),
      surfaceContainerHighest: Color(0xffe4e1e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2d3167),
      surfaceTint: Color(0xff565992),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6468a2),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2e3067),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6568a2),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff443400),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff836a1c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff111116),
      onSurfaceVariant: Color(0xff36353e),
      outline: Color(0xff52525b),
      outlineVariant: Color(0xff6d6c76),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffbfc2ff),
      primaryFixed: Color(0xff6468a2),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff4c5088),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6568a2),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4d5088),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff836a1c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff695200),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc8c5cd),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f2fa),
      surfaceContainer: Color(0xffeae7ef),
      surfaceContainerHigh: Color(0xffdedbe3),
      surfaceContainerHighest: Color(0xffd3d0d8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff23265c),
      surfaceTint: Color(0xff565992),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff40447b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff24265c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff41447b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff382a00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5b4700),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2b2b34),
      outlineVariant: Color(0xff494851),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303036),
      inversePrimary: Color(0xffbfc2ff),
      primaryFixed: Color(0xff40447b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff292d63),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff41447b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2a2d63),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5b4700),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff403100),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbab8bf),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3eff7),
      surfaceContainer: Color(0xffe4e1e9),
      surfaceContainerHigh: Color(0xffd6d3db),
      surfaceContainerHighest: Color(0xffc8c5cd),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbfc2ff),
      surfaceTint: Color(0xffbfc2ff),
      onPrimary: Color(0xff272b60),
      primaryContainer: Color(0xff3e4278),
      onPrimaryContainer: Color(0xffe0e0ff),
      secondary: Color(0xffc0c1ff),
      onSecondary: Color(0xff282a60),
      secondaryContainer: Color(0xff3f4178),
      onSecondaryContainer: Color(0xffe1e0ff),
      tertiary: Color(0xffe3c36c),
      onTertiary: Color(0xff3d2f00),
      tertiaryContainer: Color(0xff584400),
      onTertiaryContainer: Color(0xffffe08d),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131318),
      onSurface: Color(0xffe4e1e9),
      onSurfaceVariant: Color(0xffc7c5d0),
      outline: Color(0xff918f9a),
      outlineVariant: Color(0xff46464f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e9),
      inversePrimary: Color(0xff565992),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff11144b),
      primaryFixedDim: Color(0xffbfc2ff),
      onPrimaryFixedVariant: Color(0xff3e4278),
      secondaryFixed: Color(0xffe1e0ff),
      onSecondaryFixed: Color(0xff12144b),
      secondaryFixedDim: Color(0xffc0c1ff),
      onSecondaryFixedVariant: Color(0xff3f4178),
      tertiaryFixed: Color(0xffffe08d),
      onTertiaryFixed: Color(0xff241a00),
      tertiaryFixedDim: Color(0xffe3c36c),
      onTertiaryFixedVariant: Color(0xff584400),
      surfaceDim: Color(0xff131318),
      surfaceBright: Color(0xff39393f),
      surfaceContainerLowest: Color(0xff0e0e13),
      surfaceContainerLow: Color(0xff1b1b21),
      surfaceContainer: Color(0xff1f1f25),
      surfaceContainerHigh: Color(0xff2a292f),
      surfaceContainerHighest: Color(0xff35343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd9d9ff),
      surfaceTint: Color(0xffbfc2ff),
      onPrimary: Color(0xff1c1f55),
      primaryContainer: Color(0xff888cc8),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd9d9ff),
      onSecondary: Color(0xff1d1f55),
      secondaryContainer: Color(0xff898cc8),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffad980),
      onTertiary: Color(0xff302400),
      tertiaryContainer: Color(0xffaa8e3d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff131318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdddbe6),
      outline: Color(0xffb2b1bb),
      outlineVariant: Color(0xff918f99),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e9),
      inversePrimary: Color(0xff3f437a),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff050741),
      primaryFixedDim: Color(0xffbfc2ff),
      onPrimaryFixedVariant: Color(0xff2d3167),
      secondaryFixed: Color(0xffe1e0ff),
      onSecondaryFixed: Color(0xff060741),
      secondaryFixedDim: Color(0xffc0c1ff),
      onSecondaryFixedVariant: Color(0xff2e3067),
      tertiaryFixed: Color(0xffffe08d),
      onTertiaryFixed: Color(0xff171000),
      tertiaryFixedDim: Color(0xffe3c36c),
      onTertiaryFixedVariant: Color(0xff443400),
      surfaceDim: Color(0xff131318),
      surfaceBright: Color(0xff44444a),
      surfaceContainerLowest: Color(0xff07070c),
      surfaceContainerLow: Color(0xff1d1d23),
      surfaceContainer: Color(0xff27272d),
      surfaceContainerHigh: Color(0xff323238),
      surfaceContainerHighest: Color(0xff3d3d43),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff0eeff),
      surfaceTint: Color(0xffbfc2ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffbabefd),
      onPrimaryContainer: Color(0xff00003c),
      secondary: Color(0xfff1eeff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbbbdfd),
      onSecondaryContainer: Color(0xff01003c),
      tertiary: Color(0xffffefca),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffdfc069),
      onTertiaryContainer: Color(0xff100a00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff131318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff1eefa),
      outlineVariant: Color(0xffc3c1cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e9),
      inversePrimary: Color(0xff3f437a),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffbfc2ff),
      onPrimaryFixedVariant: Color(0xff050741),
      secondaryFixed: Color(0xffe1e0ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc0c1ff),
      onSecondaryFixedVariant: Color(0xff060741),
      tertiaryFixed: Color(0xffffe08d),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe3c36c),
      onTertiaryFixedVariant: Color(0xff171000),
      surfaceDim: Color(0xff131318),
      surfaceBright: Color(0xff504f56),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1f1f25),
      surfaceContainer: Color(0xff303036),
      surfaceContainerHigh: Color(0xff3b3b41),
      surfaceContainerHighest: Color(0xff47464c),
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
     scaffoldBackgroundColor: colorScheme.surface,
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
