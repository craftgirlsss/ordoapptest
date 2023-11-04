import 'package:flutter/material.dart';
import 'package:ordoapp/src/components/fontstyles/fontstyle.dart';
import 'package:ordoapp/src/components/formats/currency.dart';

class TotalRevenue extends StatefulWidget {
  const TotalRevenue({super.key});

  @override
  State<TotalRevenue> createState() => _TotalRevenueState();
}

class _TotalRevenueState extends State<TotalRevenue> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(196, 64, 166, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Revenue",
                  style: poppinsRegular(color: Colors.white, fontSize: 12),
                ),
                Text(
                  formatCurrency.format(275500000),
                  style: poppinsBold(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          PopupMenuButton(
              icon: Image.asset('assets/icons/menu.png'),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              splashRadius: 10,
              elevation: 2,
              itemBuilder: (context) {
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "Daily",
                      style: poppinsRegular(fontSize: 11),
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: Text(
                      "Weakly",
                      style: poppinsRegular(fontSize: 11),
                    ),
                  ),
                  PopupMenuItem<int>(
                    value: 2,
                    child: Text(
                      "Monthly",
                      style: poppinsRegular(fontSize: 11),
                    ),
                  ),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  debugPrint("Daily");
                } else if (value == 1) {
                  debugPrint("Weekly");
                } else if (value == 2) {
                  debugPrint("Monthly");
                }
              }),
        ],
      ),
    );
  }
}
