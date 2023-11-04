import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordoapp/src/components/appbars/appbar.dart';
import 'package:ordoapp/src/components/charts/progresschart.dart';
import 'package:ordoapp/src/components/containers/itemsmenu.dart';
import 'package:ordoapp/src/components/containers/keyperformance.dart';
import 'package:ordoapp/src/components/containers/listtileleaderboard.dart';
import 'package:ordoapp/src/components/containers/moredatamenuinfo.dart';
import 'package:ordoapp/src/components/totalavenue/totalavenue.dart';
import 'package:ordoapp/src/controllers/homecontroller.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final rng = Random();
const dayCount = 7;

class _HomeState extends State<Home> {
  HomeController controller = Get.put(HomeController());
  late List<Score> _scores;

  @override
  void initState() {
    super.initState();
    final scores = List<Score>.generate(dayCount, (index) {
      final y = rng.nextDouble() * 30.0;
      final d = DateTime.now().add(Duration(days: -dayCount + index));
      return Score(d, y);
    });
    setState(() {
      _scores = scores;
    });
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: ListView(
        children: [
          const TotalRevenue(),
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            color: Colors.transparent,
            child: SizedBox(
              height: 170,
              child: ProgressChart(
                scores: _scores,
              ),
            ),
          ),
          const SizedBox(height: 10),
          keyPerformanceText(),
          SizedBox(
            child: Obx(() => controller.isLoading.value == true
                ? const Center(
                    child: Text("Loading"),
                  )
                : controller.menuModels.value != null
                    ? Container(
                        color: Colors.transparent,
                        height: 140,
                        child: CarouselSlider.builder(
                          itemCount: controller.menuModels.value!.result.length,
                          itemBuilder: (BuildContext context, int itemIndex,
                                  int pageViewIndex) =>
                              Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: itemsData(context,
                                addSizedbox: controller.menuModels.value!
                                    .result[itemIndex].addSizeBox,
                                percentage: controller.menuModels.value!
                                    .result[itemIndex].percentage,
                                title: controller
                                    .menuModels.value!.result[itemIndex].name,
                                r: controller.menuModels.value!
                                    .result[itemIndex].color.r,
                                g: controller.menuModels.value!
                                    .result[itemIndex].color.g,
                                b: controller.menuModels.value!
                                    .result[itemIndex].color.b,
                                opacity: controller.menuModels.value!
                                    .result[itemIndex].color.opacity,
                                underValue: controller.menuModels.value!
                                    .result[itemIndex].underValue,
                                urlIcons: controller.menuModels.value!
                                    .result[itemIndex].imageFileName,
                                value: controller
                                    .menuModels.value!.result[itemIndex].value),
                          ),
                          options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            pageSnapping: false,
                            height: 140,
                            enlargeCenterPage: false,
                            reverse: false,
                            autoPlay: false,
                            initialPage: 1,
                            enlargeFactor: 0.9,
                            aspectRatio: 1 / 1,
                            disableCenter: false,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: false,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            viewportFraction: 0.5,
                          ),
                        ),
                      )
                    : const Center(
                        child: Text("Tidak Ada Data"),
                      )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Obx(() => controller.isLoading.value == true
                ? const Center(child: Text("Loading"))
                : controller.menuModels.value != null
                    ? Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            DotsIndicator(
                              decorator: DotsDecorator(
                                  activeShape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  size: const Size(44.0, 3.0),
                                  activeSize: const Size(44.0, 3.0),
                                  activeColor:
                                      const Color.fromRGBO(120, 100, 230, 1),
                                  color:
                                      const Color.fromRGBO(239, 234, 234, 1)),
                              dotsCount:
                                  controller.menuModels.value!.result.length,
                              position: currentIndex,
                            ),
                          ],
                        ),
                      )
                    : const Center(child: Text("Tidak Ada Data"))),
          ),
          moreData(name: "Recent Lead", onPressed: () {}),
          Obx(
            () => controller.isLoading.value == true
                ? const Center(child: Text("Loading"))
                : controller.recentModels.value != null
                    ? ListView.separated(
                        itemCount: controller.recentModels.value!.result.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 3, bottom: 3),
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => listTilePerson(context,
                            r: controller.recentModels.value!.result[index]
                                .containerColor.r,
                            g: controller.recentModels.value!.result[index]
                                .containerColor.g,
                            b: controller.recentModels.value!.result[index]
                                .containerColor.b,
                            o: controller.recentModels.value!.result[index]
                                .containerColor.o,
                            name: controller
                                .recentModels.value!.result[index].name,
                            price: controller
                                .recentModels.value!.result[index].price,
                            time: controller
                                .recentModels.value!.result[index].date,
                            titleLabel: controller.recentModels.value!
                                .result[index].labelNameIcon,
                            urlImageAvatar: controller.recentModels.value!
                                .result[index].avatarFileName,
                            urlImageIcons: controller.recentModels.value!
                                .result[index].labelFileName),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 5),
                      )
                    : const Center(child: Text("Tidak Ada Data")),
          ),
          moreData(name: "Leaderboards", onPressed: () {}),
          Obx(
            () => controller.isLoading.value == true
                ? const Center(child: Text("Loading"))
                : controller.leaderboards.value != null
                    ? ListView.separated(
                        itemCount: controller.leaderboards.value!.result.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 3, bottom: 3),
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) =>
                            listTilePersonLeaderboard(
                          context,
                          deals: controller
                              .leaderboards.value!.result[index].deals,
                          index: index + 1,
                          name:
                              controller.leaderboards.value!.result[index].name,
                          time:
                              controller.leaderboards.value!.result[index].date,
                          urlImageAvatar: controller
                              .leaderboards.value!.result[index].avatarFileName,
                        ),
                        separatorBuilder: (context, index) => const Divider(),
                      )
                    : const Center(
                        child: Text("Tidak Ada Data"),
                      ),
          )
        ],
      ),
    );
  }
}
