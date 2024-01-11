import 'package:flutter/widgets.dart';

class Constant {
  // regular = normal, small < regular < big
  static const double fontExtraSmall = 10.0;
  static const double fontSmall = 12.0;
  static const double fontSemiSmall = 14.0;
  static const double fontRegular = 15.0;
  static const double fontSemiRegular = 16.0;
  static const double fontSemiBig = 18.0;
  static const double fontBig = 20.0;
  static const double fontExtraBig = 28.0;
  static const double fontTitle = 24.0;

  static const int purpleColorLight = 0xFF9934C9;
  static const int purpleColorDark = 0xFF4D196B;
  static const int orangeColorDark = 0xFFFA5614;
  static const int orangeColorLight = 0xFFF68A28;
  static const int whiteColorLight = 0xFFFFFFFF;
  static const int whiteColorBase = 0xFFFAFAFA;
  static const int blackColorLight = 0xFF302E37;

  final Size size;

  Constant(BuildContext context) : size = MediaQuery.of(context).size;
}
