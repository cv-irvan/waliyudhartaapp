import 'package:wali_yudharta/service/api.dart';

class Repository{
  final api = ApiProvider();

  Future getMhs(String nim) => api.getMhs(nim);
}