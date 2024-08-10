import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/media_size.dart';
import 'app_color.dart';

class TStyle {
  static TextStyle roboto({
    Color? color,
    double? fontSize,
    bool whiteText = false,
    FontWeight? fontWeight,
  }) {
    return GoogleFonts.roboto(
      color: color ?? (whiteText ? AppColor.textFFFFFF : AppColor.text000000),
      fontSize: fontSize ?? fixedRatio(10),
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }
}
