import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ordoapp/src/components/fontstyles/fontstyle.dart';
import 'package:ordoapp/src/components/formats/currency.dart';

Widget listTilePersonLeaderboard(
  context, {
  String? name,
  String? time,
  String? urlImageAvatar,
  int? index,
  int? deals,
}) {
  return Container(
    padding: const EdgeInsets.only(left: 13, top: 9, right: 13, bottom: 9),
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.transparent,
          child: Row(
            children: [
              index == 1 ? const SizedBox(width: 2) : Container(),
              Text(
                index.toString(),
                style: poppinsRegular(
                    fontSize: 22,
                    color: const Color.fromRGBO(196, 64, 166, 1),
                    fontWeight: FontWeight.bold),
              ),
              index == 1 ? const SizedBox(width: 2) : Container(),
              const SizedBox(width: 13),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Image.asset('assets/icons/$urlImageAvatar',
                    fit: BoxFit.cover),
              ),
              const SizedBox(width: 10),
              Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name!,
                      style: poppinsRegular(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/calendar.png'),
                        const SizedBox(width: 5),
                        Text(
                          DateFormat('dd MMM yyyy').format(DateTime.now()),
                          style: poppinsRegular(
                              color: Colors.grey.shade400, fontSize: 11),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                deals.toString(),
                style: poppinsRegular(
                    fontSize: 12, color: const Color.fromRGBO(196, 64, 166, 1)),
              ),
              const SizedBox(width: 3),
              Text(
                "Deals",
                style:
                    poppinsRegular(fontSize: 10, color: Colors.grey.shade400),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget listTilePerson(context,
    {String? name,
    String? time,
    int? price,
    int? r,
    int? g,
    int? b,
    double? o,
    String? urlImageAvatar,
    String? urlImageIcons,
    String? titleLabel}) {
  return Container(
    padding: const EdgeInsets.only(left: 13, top: 9, right: 13, bottom: 9),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 7,
            offset: Offset(0, 7), // Shadow position
          ),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Image.asset('assets/icons/$urlImageAvatar',
                    fit: BoxFit.cover),
              ),
              const SizedBox(width: 10),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name!,
                      style: poppinsRegular(fontSize: 12),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/icons/calendar.png'),
                        const SizedBox(width: 5),
                        Text(
                          DateFormat('dd MMM yyyy').format(DateTime.now()),
                          style: poppinsRegular(
                              color: Colors.grey.shade400, fontSize: 11),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 94,
                height: 22,
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 3, bottom: 3),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(r!, g!, b!, o!),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/$urlImageIcons'),
                    const SizedBox(width: 3),
                    Text(
                      titleLabel!,
                      style: poppinsRegular(fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Text(
                formatCurrency.format(price),
                style: poppinsRegular(fontSize: 12),
              )
            ],
          ),
        )
      ],
    ),
  );
}
