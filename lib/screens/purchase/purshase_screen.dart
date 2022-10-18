import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea1_danielcastro/controller/index.dart';
import 'package:tarea1_danielcastro/screens/widgets/custom_button.dart';
import 'package:tarea1_danielcastro/theme/appStyle.dart';
import 'package:tarea1_danielcastro/theme/app_decoration.dart';
import 'package:tarea1_danielcastro/utils/index.dart';

class PurshaseScreen extends StatelessWidget {
  PurshaseScreen({Key? key}) : super(key: key);

  final shoppingCarController = Get.put(ShoppingCartController());

  cleanShoppingCard() {
    shoppingCarController.cleanData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                932.00,
              ),
              width: getHorizontalSize(
                430.00,
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  _Background(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _BlobLike(),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: getMargin(
                              top: 23,
                              right: 154,
                            ),
                            decoration: AppDecoration.txtOutlineBlack9003f,
                            child: Text(
                              "Gracias...",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtLemonRegular40,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: getHorizontalSize(
                              248.00,
                            ),
                            margin: getMargin(
                              left: 48,
                              top: 64,
                              right: 48,
                            ),
                            child: Text(
                              "Gracias por su compra ",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLemonRegular25,
                            ),
                          ),
                        ),
                        CustomButton(
                          onTap: () {
                            cleanShoppingCard();
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/home', (route) => false);
                          },
                          width: 162,
                          text: "Regresar",
                          margin: getMargin(
                            left: 125,
                            top: 100,
                            right: 125,
                            bottom: 129,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BlobLike extends StatelessWidget {
  const _BlobLike({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          388.00,
        ),
        width: getHorizontalSize(
          353.00,
        ),
        margin: getMargin(
          left: 37,
          top: 55,
          right: 37,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CommonImageView(
                imagePath: ImageConstant.imgBlob2,
                height: getVerticalSize(
                  388.00,
                ),
                width: getHorizontalSize(
                  353.00,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: getPadding(
                  left: 80,
                  top: 88,
                  right: 80,
                  bottom: 88,
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgLikeIcon,
                  height: getVerticalSize(
                    178.00,
                  ),
                  width: getHorizontalSize(
                    191.00,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CommonImageView(
        imagePath: ImageConstant.imgBackgroundCompleto,
        height: getVerticalSize(
          932.00,
        ),
        width: getHorizontalSize(
          430.00,
        ),
      ),
    );
  }
}
