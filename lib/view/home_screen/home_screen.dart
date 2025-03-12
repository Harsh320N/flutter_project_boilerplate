import 'package:flutter_project_boilerplate/data/response/status.dart';
import 'package:flutter_project_boilerplate/res/widgets/widget_export.dart';
import 'package:flutter_project_boilerplate/utils/utils.dart';
import 'package:flutter_project_boilerplate/view_model/controller/user_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String homeScreen = "/HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserListViewModel userListVM = UserListViewModel();

  @override
  void initState() {
    super.initState();
    userListVM.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dashboardAppBar(
        context,
        title: labels(
          text: "Provider",
          color: Theme.of(context).iconTheme.color!,
          fontWeight: FontWeight.w700,
          size: 20.0,
        ),
      ),
      body: ChangeNotifierProvider(
        create: (context) => userListVM,
        child: Consumer<UserListViewModel>(
          builder: (context, value, child) {
            switch (value.userList.state) {
              case Status.loading:
                return Utils.loader();
              case Status.error:
                return Center(child: labels(text: "Error"));
              case Status.completed:
                return ListView.builder(
                  itemCount: value.userList.data!.data!.length,
                  itemBuilder: (context, index) => ListTile(
                    title: labels(text: value.userList.data!.data![index].firstName ?? ""),
                    subtitle: labels(text: value.userList.data!.data![index].email ?? ""),
                    trailing: labels(text: value.userList.data!.data![index].id.toString()),
                  ),
                );
              default:
                return Center(child: labels(text: "Nothing"));
            }
          },
        ),
      ),
    );
  }
}
