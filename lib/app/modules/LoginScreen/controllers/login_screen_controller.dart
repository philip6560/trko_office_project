import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:test_project_one/app/services/api_calls.dart';

class LoginScreenController extends GetxController {

  Webservice webservice = Get.find();

  login(username, password) async {
    try {
      final response = await webservice.login(username, password);
    } on DioError catch (e) {
      print(e.toString());
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  getUsercount() {
    return webservice.getUsercount();
  }


  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

}
