import 'package:flutter_project_boilerplate/data/network/network_api_services.dart';
import 'package:flutter_project_boilerplate/model/user_list_model.dart';
import 'package:flutter_project_boilerplate/res/app_url/app_url.dart';

class UserListRepository {
  final _api = NetworkApiServices();

  Future<UserListModel> userListApi() async {
    dynamic response = await _api.getApi(AppUrl.userListUrl);
    return UserListModel.fromJson(response);
  }
}