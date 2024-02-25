import 'package:flutter/material.dart';
import 'package:ordoapp/src/components/fontstyles/fontstyle.dart';

AppBar homeAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(
      "Dashboard Performa",
      style: poppinsRegular(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
    ),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {},
          tooltip: "Notification",
          icon: Image.asset('assets/icons/Notification.png')),
      IconButton(
          onPressed: () {},
          tooltip: "Profile",
          icon: Image.asset('assets/icons/frame.png')),
    ],
    elevation: 0,
    backgroundColor: const Color.fromRGBO(196, 64, 166, 1),
  );
}
