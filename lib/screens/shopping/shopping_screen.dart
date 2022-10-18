import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea1_danielcastro/controller/productFaboritesProduct.dart';
import 'package:tarea1_danielcastro/controller/shoppingcarController.dart';
import 'package:tarea1_danielcastro/screens/widgets/index.dart';
import 'package:tarea1_danielcastro/theme/appStyle.dart';
import 'package:tarea1_danielcastro/utils/index.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  final shoppingCarController = Get.put(ShoppingCartController());

  purshaseEvent() {
    print("Comprar");
    Navigator.pushNamed(context, "/purshase");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
      ),
      floatingActionButton: Padding(
        padding: getPadding(right: 255, bottom: 550),
        child: SizedBox(
          width: 100,
          height: 100,
          child: FloatingActionButton(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.payment,
                  size: 35,
                ),
                Text("00.000"),
              ],
            ),
            onPressed: () {
              purshaseEvent();
            },
          ),
        ),
      ),
      body: Container(
        width: size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  _Background(),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        child: Column(
                      children: [
                        _Blob(),
                        SingleChildScrollView(
                          child: Container(
                              height: 493,
                              width: size.width,
                              child: GetX<ProductFaboritesController>(
                                builder: (controller) {
                                  return ListView.builder(
                                    itemCount: controller.countFaboritesProduct,
                                    itemBuilder: (context, index) {
                                      return Card(
                                        child: Padding(
                                          padding:
                                              getPadding(left: 5, right: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CommonImageView(
                                                url: controller
                                                    .favoritesProduct[index]
                                                    .productImage,
                                                height: 75,
                                                width: 75,
                                              ),
                                              Container(
                                                width: 265,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      controller
                                                          .favoritesProduct[
                                                              index]
                                                          .productName,
                                                      style: AppStyle
                                                          .txtLemonRegular15,
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 2,
                                                    ),
                                                    RatingBarIByitem(
                                                        rating: (controller
                                                            .favoritesProduct[
                                                                index]
                                                            .rating)),
                                                    Text(controller
                                                        .favoritesProduct[index]
                                                        .productDescription),
                                                    Text(
                                                        "Cantidad por comprar : 1"),
                                                  ],
                                                ),
                                              ),
                                              ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.red,
                                                          onPrimary:
                                                              Colors.white),
                                                  onPressed: () {},
                                                  child: const Icon(
                                                      Icons.cancel_rounded)),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              )),
                        )
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class _Blob extends StatelessWidget {
  const _Blob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        314.00,
      ),
      width: getHorizontalSize(
        316.00,
      ),
      margin: getMargin(left: 19, right: 19, top: 35),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CommonImageView(
                  imagePath: ImageConstant.imgBlob1,
                  height: getVerticalSize(
                    274.00,
                  ),
                  width: getHorizontalSize(
                    276.00,
                  ),
                ),
                Text(
                  "Lista de compras...",
                  textAlign: TextAlign.center,
                  style: AppStyle.txtLemonRegular25,
                )
              ],
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
                  201.00,
                ),
                width: getHorizontalSize(
                  205.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonImageView(
      imagePath: ImageConstant.imgBackgroundSimple,
      height: getHorizontalSize(size.height),
      width: size.width,
    );
  }
}
