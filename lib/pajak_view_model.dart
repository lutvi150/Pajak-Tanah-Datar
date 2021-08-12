import 'dart:convert';

import 'package:get/get.dart';
import 'package:pajak_tanah_datar/pajak_model.dart';
import 'package:http/http.dart' as http;

class PajakViewMode extends GetxController {
  static PajakViewMode get to => Get.put(PajakViewMode());

  Rx<PajakModel> pajakModel = PajakModel().obs;
  RxList<String> history = RxList.empty();

  Rx<RxStatus> pajakState = RxStatus.empty().obs;

  fetch(String ba,String nomor, String seri) async {
    try {
      pajakState.value = RxStatus.loading();
      pajakModel.value = await PajakRepository().fetchPajak(ba, nomor, seri);
      pajakState.value = RxStatus.success();
      history.add("$ba $nomor $seri".toUpperCase());
    } catch (e) {
      pajakState.value = RxStatus.error(e.toString());
    }
  }
}

class PajakRepository {
  Future<PajakModel> fetchPajak(String ba, nomor, seri) async {
    try {
      final body = {
        "ba": ba,
        "nomor": nomor,
        "seri": seri,
      };
      final response = await http.post(
          Uri.parse("https://dpkd.sumbarprov.go.id/ajax/pkb?ba"),
          body: body);
      final resultDcode = jsonDecode(response.body);
      return PajakModel.fromJson(resultDcode);
    } catch (e) {
      Exception(e);
    }
  }
}
