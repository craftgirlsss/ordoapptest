import 'package:flutter/material.dart';
import 'package:ordoapp/src/components/fontstyles/fontstyle.dart';

Widget itemsData(context,
    {String? urlIcons,
    String? title,
    int? value,
    int? r,
    int? g,
    int? b,
    double? opacity,
    bool? addSizedbox = false,
    double? percentage,
    bool? underValue}) {
  return Container(
    padding: const EdgeInsets.only(left: 14, top: 10, right: 14, bottom: 10),
    height: 50,
    width: 170,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 20,
          offset: const Offset(1, 5), // Shadow position
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 20,
              height: 20,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(r!, g!, b!, opacity!),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ]),
              child: Image.asset(
                'assets/icons/$urlIcons',
              ),
            ),
            addSizedbox == true
                ? const SizedBox(width: 10)
                : const SizedBox(height: 0, width: 0),
            Text(
              title!,
              style: poppinsRegular(fontSize: 12),
            )
          ],
        ),
        const SizedBox(height: 10),
        Text(
          value!.toString(),
          style: poppinsRegular(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Last month",
              style: poppinsRegular(color: Colors.grey.shade400, fontSize: 9),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  underValue == true
                      ? TextSpan(
                          text: '-',
                          style: poppinsRegular(
                              fontSize: 13,
                              color: underValue == true
                                  ? Colors.red
                                  : Colors.black))
                      : percentage != 0
                          ? TextSpan(
                              text: '+', style: poppinsRegular(fontSize: 13))
                          : TextSpan(
                              text: "", style: poppinsRegular(fontSize: 13)),
                  TextSpan(
                      text: percentage!.toString(),
                      style: poppinsRegular(
                          fontSize: 13,
                          color:
                              underValue == true ? Colors.red : Colors.black)),
                  TextSpan(text: "%", style: poppinsRegular(fontSize: 13)),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
