import 'package:get/get.dart';
import 'package:onyx_delivery/app/core/helpers/sqlite_db_helper.dart';
import 'package:onyx_delivery/app/core/services/session_manager.dart';

class HomeController extends GetxController {
  var dbHelper = DatabaseHelper();

  String? userName;
  String? userLanguage;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    var rows = await dbHelper.queryAllRows();
    userName = rows[0]['name'];
    userLanguage = rows[0]['language'];
    SessionManager.startSessionTimeout(Get.context!);
  }
}
