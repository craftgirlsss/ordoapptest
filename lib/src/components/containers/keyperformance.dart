import 'package:flutter/material.dart';
import 'package:ordoapp/src/components/fontstyles/fontstyle.dart';

Widget keyPerformanceText() {
  return Row(
    children: [
      const SizedBox(width: 14),
      Image.asset('assets/icons/chart.png'),
      const SizedBox(width: 10),
      Text(
        "Key Performance Indicator",
        style: poppinsRegular(fontSize: 13),
      )
    ],
  );
}
