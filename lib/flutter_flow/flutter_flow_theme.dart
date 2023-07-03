// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color dadada;
  late Color c797979;
  late Color f6f6f6;
  late Color f2f2f2;
  late Color a0a0a0;
  late Color d7d7d7;
  late Color e1e1e1;
  late Color hintColor;
  late Color aeaeae;
  late Color gradient1;
  late Color gradient2;
  late Color dcdcdc;
  late Color dbdbdb;
  late Color blueColor;
  late Color fbfbfb;
  late Color c616161;
  late Color c6c6c6;
  late Color d6d6d6;
  late Color dddddd;
  late Color dfdfdf;
  late Color bababa;
  late Color b7b7b7;
  late Color c878787;
  late Color c939393;
  late Color cbcbcb;
  late Color c2C2B2B;
  late Color customColor1;
  late Color customColor2;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF2BE4E7);
  late Color secondary = const Color(0xFF0011FF);
  late Color tertiary = const Color(0xFFBC62DC);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFF1C1B1B);
  late Color secondaryBackground = const Color(0xFF343434);
  late Color accent1 = const Color(0xFF616161);
  late Color accent2 = const Color(0xFF757575);
  late Color accent3 = const Color(0xFFE0E0E0);
  late Color accent4 = const Color(0xFFEEEEEE);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color dadada = Color(0xFFDADADA);
  late Color c797979 = Color(0xFF797979);
  late Color f6f6f6 = Color(0xFFF6F6F6);
  late Color f2f2f2 = Color(0xFFF2F2F2);
  late Color a0a0a0 = Color(0xFFA0A0A0);
  late Color d7d7d7 = Color(0xFFD7D7D7);
  late Color e1e1e1 = Color(0xFFE1E1E1);
  late Color hintColor = Color(0xFFA7A7A7);
  late Color aeaeae = Color(0xFFAEAEAE);
  late Color gradient1 = Color(0xFF5B5B5B);
  late Color gradient2 = Color(0xFF252525);
  late Color dcdcdc = Color(0xFFDCDCDC);
  late Color dbdbdb = Color(0xFFDBDBDB);
  late Color blueColor = Color(0xFF288CE9);
  late Color fbfbfb = Color(0xFFFBFBFB);
  late Color c616161 = Color(0xFF616161);
  late Color c6c6c6 = Color(0xFFC6C6C6);
  late Color d6d6d6 = Color(0xFFD6D6D6);
  late Color dddddd = Color(0xFFDDDDDD);
  late Color dfdfdf = Color(0xFFDFDFDF);
  late Color bababa = Color(0xFFBABABA);
  late Color b7b7b7 = Color(0xFFB7B7B7);
  late Color c878787 = Color(0xFF878787);
  late Color c939393 = Color(0xFF939393);
  late Color cbcbcb = Color(0xFFCBCBCB);
  late Color c2C2B2B = Color(0xFF2C2B2B);
  late Color customColor1 = Color(0xFFFEF4D3);
  late Color customColor2 = Color(0xFF51DC4A);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Meta font ';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Meta font ';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Meta font ';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Meta font ';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Meta font ';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => 'Meta font ';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Meta font ';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Meta font ';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Meta font ';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Meta font ';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Meta font ';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Meta font ';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Meta font ';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Meta font ';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Meta font ';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Meta font ';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Meta font ';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Meta font ';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Meta font ';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Meta font ';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => 'Meta font ';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Meta font ';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Meta font ';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Meta font ';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Meta font ';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Meta font ';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Meta font ';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Meta font ';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Meta font ';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Meta font ';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Meta font ';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Meta font ';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Meta font ';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Meta font ';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Meta font ';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => 'Meta font ';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Meta font ';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Meta font ';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Meta font ';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Meta font ';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Meta font ';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Meta font ';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Meta font ';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Meta font ';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Meta font ';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Meta font ',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
