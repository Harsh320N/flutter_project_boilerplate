import 'package:flutter_project_boilerplate/data/response/api_response.dart';
import 'package:flutter_project_boilerplate/model/user_list_model.dart';
import 'package:flutter_project_boilerplate/repository/user_list_repository.dart';
import 'package:flutter_project_boilerplate/utils/utils.dart';
import 'package:flutter/material.dart';

class UserListViewModel with ChangeNotifier {

  List<Datum> data = [];
  void setData(List<Datum> value) {
    data = value;
    notifyListeners();
  }

  ApiResponse<UserListModel> userList = ApiResponse.loading();
  void setStatus(ApiResponse<UserListModel> value) {
    userList = value;
    notifyListeners();
  }

  final _api = UserListRepository();

  void userListApi() {
    _api.userListApi().then((value) {
      setStatus(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      setStatus(ApiResponse.error(error.toString()));
      Utils.snack(text: "Error");
    });
  }
}
