import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfoodapp/const/colors.dart';
import 'package:myfoodapp/controller/menuController.dart';
import 'package:myfoodapp/utils/helper.dart';
import 'package:myfoodapp/widgets/customNavBar.dart';

class OfferScreen extends StatelessWidget {
  static const routeName = "/offerScreen";
  final MenuController1 menuController = Get.put(MenuController1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Latest Offers",
                          style: Helper.getTheme(context).headline5,
                        ),
                        Image.asset(
                          Helper.getAssetName("cart.png", "virtual"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [Text("Find discounts, Offer special")],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: Helper.getScreenWidth(context) * 0.4,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("Check Offers")),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: menuController.menuList.length,
                      itemBuilder: (context, index) {
                        var menu = menuController.menuList[index];
                        return OfferCard(
                          image: Image.network(
                            menu.image,
                            fit: BoxFit.cover,
                          ),
                          name: menu.name,
                          price: menu.price.toString(),
                          rating: menu.rating.toString(),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              offer: true,
            ),
          )
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    required String name,
    required String price,
    required String rating,
    required Image image,
  })  : _image = image,
        _name = name,
        _price = price,
        _rating = rating;

  final String _name;
  final Image _image;
  final String _price;
  final String _rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: _image),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  _name,
                  style: Helper.getTheme(context)
                      .headline4
                      ?.copyWith(color: AppColor.primary),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Image.asset(
                  Helper.getAssetName("star_filled.png", "virtual"),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  _rating,
                  style: TextStyle(
                    color: AppColor.orange,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text("($_price\$)"),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    ".",
                    style: TextStyle(
                        color: AppColor.orange, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(" Western Food"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
