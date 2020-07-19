

import 'package:rxdart/rxdart.dart';
import 'package:wali_yudharta/model/getMhsModel.dart';
import 'package:wali_yudharta/service/Repository.dart';

class MhsBloc{
  final _repository = Repository();
  final _mhsFatcher = PublishSubject<GetMhsModel>();

  Observable<GetMhsModel> get mhs => _mhsFatcher.stream;

  getMhs(String nim) async{
    GetMhsModel getMhsModel = await _repository.getMhs(nim);
    _mhsFatcher.sink.add(getMhsModel);
  }
  
  dispose(){
    _mhsFatcher.close();
  }
}
final mhsBloc = MhsBloc();