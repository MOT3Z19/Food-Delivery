import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfoodapp/controller/menuController.dart';

class MenuView extends StatelessWidget {
  final MenuController1 menuController = Get.put(MenuController1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Obx(() {
        if (menuController.menuList.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: menuController.menuList.length,
            itemBuilder: (context, index) {
              var menu = menuController.menuList[index];
              return ListTile(
                leading: Image.network(menu.image),
                title: Text(menu.name),
                subtitle: Text(menu.description),
              );
            },
          );
        }
      }),
    );
  }
}
