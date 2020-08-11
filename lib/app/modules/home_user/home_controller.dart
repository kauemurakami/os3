import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:os_tres/app/data/repository/user_repository.dart';

class HomeController extends GetxController {

final UserRepository repository;
HomeController({@required this.repository}) : assert(repository != null);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}