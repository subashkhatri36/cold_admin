import 'package:coldstore_admin_app/app/constants/contants.dart';
import 'package:coldstore_admin_app/app/constants/theme_data.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Themes.WHITE,
        body: SafeArea(
          child: InkWell(
              child: Obx(() => Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 7,
                            child: Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/logo.png',
                                  height: 300,
                                  width: 300,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                ),
                              ],
                            )),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                CircularProgressIndicator(),
                                Container(
                                  height: 10,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Spacer(),
                                      Text(
                                        controller.versionName,
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                      Spacer(
                                        flex: 4,
                                      ),
                                      Text(
                                        APP_NAME,
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor),
                                      ),
                                      Spacer(),
                                    ])
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ))),
        ));
  }
}
