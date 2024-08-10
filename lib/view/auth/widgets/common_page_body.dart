import 'package:flutter/material.dart';

import '../../../controller/components/utils/media_size.dart';

Widget commonBody({required Widget child}) {
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.fromLTRB(
        fixedRatio(15),
        fixedRatio(15),
        fixedRatio(15),
        fixedRatio(15),
      ),
      child: child,
    ),
  );
}
