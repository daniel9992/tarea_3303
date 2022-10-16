import 'package:flutter/material.dart';
import 'package:tarea1_danielcastro/theme/appStyle.dart';
import 'package:tarea1_danielcastro/utils/index.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    timetoLoad();
  }

  timetoLoad() async {
    await Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.lightBlue50,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: Align(
            alignment: Alignment.centerLeft,
            child: SingleChildScrollView(
              child: Container(
                height: getVerticalSize(
                  922.00,
                ),
                width: getHorizontalSize(
                  430.00,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: getVerticalSize(
                          759.00,
                        ),
                        width: getHorizontalSize(
                          430.00,
                        ),
                        margin: getMargin(
                          top: 10,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                imagePath: ImageConstant.imgBackgroundSimple,
                                height: getVerticalSize(
                                  759.00,
                                ),
                                width: getHorizontalSize(
                                  430.00,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 2,
                                  top: 10,
                                  bottom: 6,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        262.00,
                                      ),
                                      margin: getMargin(
                                        left: 54,
                                        right: 54,
                                      ),
                                      child: Text(
                                        "Su tienda a la mano.",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLemonRegular40,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        280.00,
                                      ),
                                      margin: getMargin(
                                        left: 54,
                                        top: 40,
                                        right: 54,
                                      ),
                                      child: Text(
                                        "Con quien este donde este, estamos para servir en productos de vanguardia.",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanRegular25,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 30,
                                      ),
                                      child: Column(
                                        children: [
                                          Center(
                                            child: Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 5),
                                              child: CircularProgressIndicator(
                                                color:
                                                    ColorConstant.deepPurple700,
                                              ),
                                            ),
                                          ),
                                          CommonImageView(
                                            imagePath: ImageConstant.imgLogo,
                                            height: getVerticalSize(
                                              157.00,
                                            ),
                                            width: getHorizontalSize(
                                              298.00,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          354.00,
                        ),
                        width: getHorizontalSize(
                          356.00,
                        ),
                        margin: getMargin(
                          left: 29,
                          top: 47,
                          right: 29,
                          bottom: 47,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                imagePath: ImageConstant.imgBlob1,
                                height: getVerticalSize(
                                  354.00,
                                ),
                                width: getHorizontalSize(
                                  356.00,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  all: 40,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgShoppingcard,
                                  height: getVerticalSize(
                                    251.00,
                                  ),
                                  width: getHorizontalSize(
                                    245.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
