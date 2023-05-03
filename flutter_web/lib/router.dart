import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_web/main.dart';
import 'package:flutter_web/page/did_vc.dart';
import 'package:flutter_web/page/join.dart';
import 'package:flutter_web/page/main_page.dart';

class Routes {
  static final router = FluroRouter();

  static var firstScreen = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return  const MyApp();
      });

  static var joinHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return const Join(title: 'Join Page',);
        //return SecondPage(data: params["data"][0]);
      });
  static var didvcHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return const DidVc(title: 'did_vc Page',);
      });
  static var mainpageHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return const MainPage(title: 'Main Page',);
      });

  static dynamic defineRoutes() {
    router.define("main", handler: firstScreen,transitionType: TransitionType.fadeIn);
    router.define("join", handler: joinHandler,transitionType: TransitionType.fadeIn);
    router.define("did_vc", handler: didvcHandler,transitionType: TransitionType.fadeIn);
    router.define("main_page", handler: mainpageHandler,transitionType: TransitionType.fadeIn);
    //router.define("second/:data", handler: placeHandler,transitionType: TransitionType.inFromLeft);
  }
}