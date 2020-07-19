import 'dart:convert';
import 'package:http/http.dart'as client;
import 'package:wali_yudharta/model/getMhsModel.dart';

class ApiProvider{
  String url = "https://sister.yudharta.ac.id/rest/wali";

  Future getMhs(String nim) async{
    final mhs = await client.get("$url/?mhs_nim=$nim&SISTER_API_KEY=3FDB2790475761C91F08F726C0D3707E");
    if (mhs.statusCode == 200) {
      return GetMhsModel.fromJson(json.decode(mhs.body));
    } else {
      print("gagal");
    }
  }
}