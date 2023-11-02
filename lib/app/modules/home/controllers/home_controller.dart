import 'dart:convert';

import 'package:get/get.dart';
import 'package:qurannapp/app/data/model/surah.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  RxList<Surah> surah = RxList<Surah>([]);
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    fetchSurah();
  }
  Future<void> fetchSurah() async {
    try {
      isLoading.value = true;
      var response = await http.get(Uri.parse(
          "https://equran.id/api/surat"));

      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        // Surah surahs = Surah.fromJson(jsonData);
        //
        // surah.assignAll(surahs);
        List<Surah> surahs = List<Surah>.from(jsonData.map((item) => Surah.fromJson(item)));
        surah.assignAll(surahs);
      } else {
        throw Exception("error when request data");
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading.value = false; // Set loading state to false when done
    }
  }
}
