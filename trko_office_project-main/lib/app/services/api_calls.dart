import 'package:dio/dio.dart';
import '../models/user_model.dart';


class Webservice{
  Dio dio = Dio(BaseOptions(baseUrl: "http://206.189.17.196:8005/api/v1"));

  Future<UserResponse> login(username,password)async {
    final _result = await dio.get('/users/login',queryParameters: {
      'email':username,
      'password':password
    });
    final value = UserResponse.fromJson(_result.data);
    return value;
  }

  Future getCustomers() async {

  }

  Future getUsercount(){
      //call api
  }
}