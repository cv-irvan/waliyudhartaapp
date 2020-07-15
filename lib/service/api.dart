import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wali_yudharta/model/model.dart';

class API{
   Future<GetMahasiswaModel> getSister(String mhsNim) async{
   String KEY = 'SISTER_API_KEY=3FDB2790475761C91F08F726C0D3707E';
   String baseUrl = 'https://sister.yudharta.ac.id/rest/wali/?mhs_nim=';
    final respon = await http.get('$baseUrl+201669040001&+$KEY');
    if(respon.statusCode==200){
 return GetMahasiswaModel.fromJson(json.decode(respon.body));
    }
  }
}