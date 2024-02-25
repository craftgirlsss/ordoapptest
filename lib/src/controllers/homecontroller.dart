import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ordoapp/src/models/leaderboardmodels.dart';
import 'package:ordoapp/src/models/menumodels.dart';
import 'package:ordoapp/src/models/profile_models.dart';
import 'package:ordoapp/src/models/recentmodels.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var isLoadingAPI = false.obs;
  var dataChart = [1.50, 1.48, 1.5, 1.50, 1.47, 1.51, 1.48].obs;
  var leaderboards = Rxn<Leaderboards>();
  var recentModels = Rxn<RecentModels>();
  var menuModels = Rxn<MenuModels>();
  var mahasiswaModels = <MahasiswaModels>[].obs;

  @override
  void onInit() {
    fetchAPIMahasiswa();
    fetchDataMenu();
    fetchDataRecent();
    fetchDataLeaderboards();
    super.onInit();
  }

  fetchAPIMahasiswa() async {
    isLoadingAPI(true);
    try {
      List resultMahasiswa = await Supabase.instance.client
          .from('tb_mahasiswa')
          .select('*')
          .limit(1);
      // print(resultMahasiswa);

      mahasiswaModels.value =
          resultMahasiswa.map((e) => MahasiswaModels.fromJson(e)).toList();
      isLoadingAPI(false);
      // print(mahasiswaModels[0].mhsNama);
    } catch (e) {
      isLoadingAPI(false);
    }
    isLoadingAPI(false);
  }

  Future<void> fetchDataMenu() async {
    isLoading(true);
    try {
      final String response =
          await rootBundle.loadString('assets/json/menuinfo.json');
      final data = await json.decode(response);
      menuModels.value = MenuModels.fromJson(data);
    } catch (e) {
      isLoading(false);
      debugPrint(e.toString());
    }
    isLoading(false);
  }

  Future<void> fetchDataRecent() async {
    isLoading(true);
    try {
      final String response =
          await rootBundle.loadString('assets/json/recentlead.json');
      final data = await json.decode(response);
      recentModels.value = RecentModels.fromJson(data);
    } catch (e) {
      isLoading(false);
      debugPrint(e.toString());
    }
    isLoading(false);
  }

  Future<void> fetchDataLeaderboards() async {
    isLoading(true);
    try {
      final String response =
          await rootBundle.loadString('assets/json/leaderboard.json');
      final data = await json.decode(response);
      leaderboards.value = Leaderboards.fromJson(data);
    } catch (e) {
      debugPrint(e.toString());
      isLoading(false);
    }
    isLoading(false);
  }
}
