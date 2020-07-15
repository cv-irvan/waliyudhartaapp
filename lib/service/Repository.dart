import 'package:wali_yudharta/model/model.dart';
import 'package:wali_yudharta/service/api.dart';

class Repository{
  final api = API();
   
   getNim(String nim) => api.getSister(nim);
    

}