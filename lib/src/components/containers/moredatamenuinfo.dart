import 'package:flutter/material.dart';
import 'package:ordoapp/src/components/fontstyles/fontstyle.dart';

Widget moreData({String? name, Function()? onPressed}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name!,
            style: poppinsRegular(fontSize: 13),
          ),
          Container(
            width: 19,
            height: 19,
            // padding: const EdgeInsets.all(2),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Color.fromRGBO(196, 64, 166, 1),
              size: 18,
            ),
          )
        ],
      ),
    ),
  );
}
