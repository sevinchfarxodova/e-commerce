import 'package:commerce_clot/core/route/route_names.dart';
import 'package:commerce_clot/features/account/add_address.dart';
import 'package:commerce_clot/features/account/add_card.dart';
import 'package:commerce_clot/features/account/address_edit.dart';
import 'package:commerce_clot/features/account/payment.dart';
import 'package:commerce_clot/features/account/wishList.dart';
import 'package:commerce_clot/features/auth/sign_up/about.dart';
import 'package:commerce_clot/features/auth/sign_up/sign_up.dart';
import 'package:commerce_clot/features/card/card_main.dart';
import 'package:commerce_clot/features/card/cart_page.dart';
import 'package:commerce_clot/features/card/checkout.dart';
import 'package:commerce_clot/features/card/message.dart';
import 'package:commerce_clot/features/home/product_categories_page.dart';
import 'package:commerce_clot/features/home/shop_categories.dart';
import 'package:commerce_clot/features/notification/notification_page.dart';
import 'package:commerce_clot/features/orders/order_details_page.dart';
import 'package:commerce_clot/features/orders/order_page.dart';
import 'package:commerce_clot/features/product_info/product_Info.dart';
import 'package:commerce_clot/features/search_pages/search_bottomSheet.dart';
import 'package:commerce_clot/features/search_pages/search_page.dart';
import 'package:flutter/material.dart';
import '../../bottom_nav_bar.dart';
import '../../features/account/profile_page.dart';
import '../../features/auth/sign_in/reset_page.dart';
import '../../features/auth/sign_in/send_email.dart';
import '../../features/auth/sign_in/sign_in_email.dart';
import '../../features/auth/sign_in/sign_in_password.dart';
import '../../features/home/home_page.dart';
import '../../features/into/splash_page.dart';

class AppRoute{
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case RouteNames.signInEmail:
       return MaterialPageRoute(builder: (_)=> const SignInEmail());
      case RouteNames.infoPage:
        return MaterialPageRoute(builder: (_)=> const InfoPage());
 case RouteNames.signInPassword:
       return MaterialPageRoute(builder: (_)=> const SignInPassword());
     case RouteNames.logInAbout:
       return MaterialPageRoute(builder: (_)=> const LogInAbout());
    case RouteNames.resetPage:
       return MaterialPageRoute(builder: (_)=> const ResetPage());
     case RouteNames.sendEmailPage:
       return MaterialPageRoute(builder: (_)=> const SendEmail());
     case RouteNames.homePage:
       return MaterialPageRoute(builder: (_)=> const HomePage());
    case RouteNames.createAccount:
       return MaterialPageRoute(builder: (_)=> const CreateAccount());
      case RouteNames.shopCategories:
        return MaterialPageRoute(builder: (_)=> const ShopCategories());
      case RouteNames.productCategories:
        String category = routeSettings.arguments as String;
        return MaterialPageRoute(builder: (_)=>  ProductCategoriesPage(category: category,),);
      case RouteNames.bottomNavBar:
        return MaterialPageRoute(builder: (_)=> const BottomNavBar());
      case RouteNames.notificPage:
        return MaterialPageRoute(builder: (_)=>  NotificationPage());
      case RouteNames.orderPage:
        return MaterialPageRoute(builder: (_)=>  OrderPage());
      case RouteNames.profilePage:
        return MaterialPageRoute(builder: (_)=>  ProfilePage());
      case RouteNames.orderDetailsPage:
        return MaterialPageRoute(builder: (_)=>  OrderDetailsPage());
      case RouteNames.searchPage:
        return MaterialPageRoute(builder: (_)=>  SearchPage());;
      case RouteNames.searchPageBottomSheets:
        return MaterialPageRoute(builder: (_)=>  SearchBottomsheet());
      case RouteNames.productInfo:
        return MaterialPageRoute(builder: (_)=>  ProductInfo());
      case RouteNames.cardMain:
        return MaterialPageRoute(builder: (_)=>  CardMain());
      case RouteNames.cardPage:
        return MaterialPageRoute(builder: (_)=>  CartPage());
      case RouteNames.checkout:
        return MaterialPageRoute(builder: (_)=>  CheckoutPage());
      case RouteNames.messagePage:
        return MaterialPageRoute(builder: (_)=>  Message());
      case RouteNames.addAddress:
        return MaterialPageRoute(builder: (_)=>  AddAddress());
      case RouteNames.addCard:
        return MaterialPageRoute(builder: (_)=>  AddCard());
      case RouteNames.addressEdit:
        return MaterialPageRoute(builder: (_)=>  AddressEdit());
      case RouteNames.paymentPage:
        return MaterialPageRoute(builder: (_)=>  PaymentPage());
      case RouteNames.wishlist:
        return MaterialPageRoute(builder: (_)=>  Wishlist());


      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('Page not found')),
    ),
    );
  }
}