import 'dart:async';
import 'package:http/http.dart' as http;

String KEY = '3FDB2790475761C91F08F726C0D3707E';
const baseUrl = 'https://sister.yudharta.ac.id/rest/wali/?mhs_nim=201669040001&SISTER_API_KEY=3FDB2790475761C91F08F726C0D3707E';

class API{
  static Future getSister(){
    var url = baseUrl;
    return http.get(url);
  }
}