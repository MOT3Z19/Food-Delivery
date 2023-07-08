import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfoodapp/const/colors.dart';
import 'package:myfoodapp/controller/menuController.dart';
import 'package:myfoodapp/screens/aboutScreen.dart';
import 'package:myfoodapp/screens/changeAddressScreen.dart';
import 'package:myfoodapp/screens/checkoutScreen.dart';
import 'package:myfoodapp/screens/dessertScreen.dart';
import 'package:myfoodapp/screens/forgetPwScreen.dart';
import 'package:myfoodapp/screens/homeScreen.dart';
import 'package:myfoodapp/screens/inboxScreen.dart';
import 'package:myfoodapp/screens/individualItem.dart';
import 'package:myfoodapp/screens/introScreen.dart';
import 'package:myfoodapp/screens/landingScreen.dart';
import 'package:myfoodapp/screens/loginScreen.dart';
import 'package:myfoodapp/screens/menuScreen.dart';
import 'package:myfoodapp/screens/moreScreen.dart';
import 'package:myfoodapp/screens/myOrderScreen.dart';
import 'package:myfoodapp/screens/newPwScreen.dart';
import 'package:myfoodapp/screens/notificationScreen.dart';
import 'package:myfoodapp/screens/offerScreen.dart';
import 'package:myfoodapp/screens/paymentScreen.dart';
import 'package:myfoodapp/screens/profileScreen.dart';
import 'package:myfoodapp/screens/sentOTPScreen.dart';
import 'package:myfoodapp/screens/signUpScreen.dart';
import 'package:myfoodapp/screens/spashScreen.dart';

import 'screens/PitzaScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: PaymentScreen(),
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgetPwScreen.routeName: (context) => ForgetPwScreen(),
        SendOTPScreen.routeName: (context) => SendOTPScreen(),
        NewPwScreen.routeName: (context) => NewPwScreen(),
        IntroScreen.routeName: (context) => IntroScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        MenuScreen.routeName: (context) => MenuScreen(),
        OfferScreen.routeName: (context) => OfferScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        MoreScreen.routeName: (context) => MoreScreen(),
        DessertScreen.routeName: (context) => DessertScreen(),
        IndividualItem.routeName: (context) => IndividualItem(),
        PaymentScreen.routeName: (context) => PaymentScreen(),
        NotificationScreen.routeName: (context) => NotificationScreen(),
        AboutScreen.routeName: (context) => AboutScreen(),
        InboxScreen.routeName: (context) => InboxScreen(),
        MyOrderScreen.routeName: (context) => MyOrderScreen(),
        CheckoutScreen.routeName: (context) => CheckoutScreen(),
        ChangeAddressScreen.routeName: (context) => ChangeAddressScreen(),
      },
    );
  }
}
