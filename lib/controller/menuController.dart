import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:myfoodapp/model/menuModel.dart';
import 'dart:convert';

class MenuController1 extends GetxController {
  RxList<MenuModel> menuList = RxList<MenuModel>();

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    try {
      var response = await http.get(Uri.parse(
          'https://free-food-menus-api-production.up.railway.app/best-foods'));
      if (response.statusCode == 200) {
        var data = json.decode(response.body) as List<dynamic>;
        menuList.value = data
            .map((item) => MenuModel(
                  id: item['id'],
                  image: item['img'],
                  name: item['name'],
                  description: item['dsc'],
                  price: item['price'].toDouble(),
                  rating: item['rate'].toDouble(),
                  country: item['country'],
                ))
            .toList();
      } else {
        // Handle error case
      }
    } catch (e) {
      // Handle exception
    }
  }

}

class MenuburgerController extends GetxController {
  RxList<MenuModel> menuList = RxList<MenuModel>();

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    try {
      var response = await http.get(Uri.parse(
          'https://free-food-menus-api-production.up.railway.app/burgers'));
      if (response.statusCode == 200) {
        var data = json.decode(response.body) as List<dynamic>;
        menuList.value = data
            .map((item) => MenuModel(
          id: item['id'],
          image: item['img'],
          name: item['name'],
          description: item['dsc'],
          price: item['price'].toDouble(),
          rating: item['rate'].toDouble(),
          country: item['country'],
        ))
            .toList();
      } else {
        // Handle error case
      }
    } catch (e) {
      // Handle exception
    }
  }
}
