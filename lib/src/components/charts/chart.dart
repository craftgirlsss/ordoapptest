// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ordoapp/src/controllers/homecontroller.dart';

// class Chart extends StatefulWidget {
//   const Chart({super.key});

//   @override
//   State<Chart> createState() => _ChartState();
// }

// class _ChartState extends State<Chart> {
//   HomeController controller = Get.put(HomeController());
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(bottom: 20),
//       height: 200,
//       decoration: const BoxDecoration(
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(-20),
//               bottomRight: Radius.circular(-20))),
//       child: Sparkline(
//         data: controller.dataChart,
//         useCubicSmoothing: true,
//         backgroundColor: const Color.fromRGBO(196, 64, 166, 1),
//         pointsMode: PointsMode.all,
//         pointSize: 15,
//         lineColor: Colors.white,
//         pointColor: Colors.white,
//       ),
//     );
//   }
// }


