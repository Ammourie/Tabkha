import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Centralized the text styles that are used widely in app
class TextThemeStyles {
  static final _fontSizeDelta = 25.sp;

  static final displayLarge = TextStyle(fontSize: 112.sp + _fontSizeDelta);
  static final displayMedium = TextStyle(fontSize: 56.sp + _fontSizeDelta);
  static final displaySmall = TextStyle(fontSize: 45.sp + _fontSizeDelta);
  static final headlineMedium = TextStyle(fontSize: 34.sp + _fontSizeDelta);
  static final headlineSmall = TextStyle(fontSize: 24.sp + _fontSizeDelta);
  static final titleLarge = TextStyle(fontSize: 21.sp + _fontSizeDelta);

  static final titleMedium = TextStyle(fontSize: 17.sp + _fontSizeDelta);
  static final titleSmall = TextStyle(fontSize: 15.sp + _fontSizeDelta);

  static final bodyLarge = TextStyle(fontSize: 15.sp + _fontSizeDelta);
  static final bodyMedium = TextStyle(fontSize: 15.sp + _fontSizeDelta);

  static final bodySmall = TextStyle(fontSize: 13.sp + _fontSizeDelta);

  static final labelLarge = TextStyle(fontSize: 13.sp + _fontSizeDelta);

  static final labelSmall = TextStyle(fontSize: 11.sp + _fontSizeDelta);

  static const String _fontFamily = 'Tajawal';

  // Regular text styles
  static final text_11_regular = TextStyle(
      fontSize: 11.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_12_regular = TextStyle(
      fontSize: 12.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_14_regular = TextStyle(
      fontSize: 14.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_16_regular = TextStyle(
      fontSize: 16.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_18_regular = TextStyle(
      fontSize: 18.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_20_regular = TextStyle(
      fontSize: 20.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_22_regular = TextStyle(
      fontSize: 22.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_24_regular = TextStyle(
      fontSize: 24.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_26_regular = TextStyle(
      fontSize: 26.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_28_regular = TextStyle(
      fontSize: 28.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  static final text_30_regular = TextStyle(
      fontSize: 30.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w400);

  // Medium text styles
  static final text_11_medium = TextStyle(
      fontSize: 11.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_12_medium = TextStyle(
      fontSize: 12.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_14_medium = TextStyle(
      fontSize: 14.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_16_medium = TextStyle(
      fontSize: 16.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_18_medium = TextStyle(
      fontSize: 18.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_20_medium = TextStyle(
      fontSize: 20.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_22_medium = TextStyle(
      fontSize: 22.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_24_medium = TextStyle(
      fontSize: 24.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_26_medium = TextStyle(
      fontSize: 26.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_28_medium = TextStyle(
      fontSize: 28.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  static final text_30_medium = TextStyle(
      fontSize: 30.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w500);

  // Bold text styles
  static final text_11_bold = TextStyle(
      fontSize: 11.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_12_bold = TextStyle(
      fontSize: 12.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_14_bold = TextStyle(
      fontSize: 14.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_16_bold = TextStyle(
      fontSize: 16.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_18_bold = TextStyle(
      fontSize: 18.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_20_bold = TextStyle(
      fontSize: 20.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_22_bold = TextStyle(
      fontSize: 22.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_24_bold = TextStyle(
      fontSize: 24.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_26_bold = TextStyle(
      fontSize: 26.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_28_bold = TextStyle(
      fontSize: 28.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);

  static final text_30_bold = TextStyle(
      fontSize: 30.sp + _fontSizeDelta,
      fontFamily: _fontFamily,
      fontWeight: FontWeight.w700);
}
