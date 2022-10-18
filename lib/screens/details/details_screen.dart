import 'package:flutter/material.dart';
import 'package:tarea1_danielcastro/model/productoModel.dart';
import 'package:tarea1_danielcastro/screens/widgets/index.dart';
import 'package:tarea1_danielcastro/theme/appStyle.dart';
import 'package:tarea1_danielcastro/theme/app_decoration.dart';
import 'package:tarea1_danielcastro/utils/index.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ProductModel;

    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: AppBar(
        title: const Text("Detalles"),
      ),
      floatingActionButton: Container(
        margin: getMargin(all: 25),
        child: FloatingActionButton(
          backgroundColor: ColorConstant.deepPurple701,
          onPressed: () {},
          child: Icon(
            Icons.plus_one,
            color: ColorConstant.whiteA700,
            size: 35,
          ),
        ),
      ),
      body: Container(
        height: getVerticalSize(932.00),
        width: getHorizontalSize(430.00),
        child: Stack(
          children: [
            Stack(
              children: [
                _ShowProductImage(image: ""),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 187,
                      right: 10,
                      bottom: 187,
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgPolygon2,
                      height: getVerticalSize(
                        147.00,
                      ),
                      width: getHorizontalSize(
                        113.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: getVerticalSize(100),
                    height: getHorizontalSize(100),
                    margin: getMargin(
                      left: 19,
                      top: 215,
                      right: 19,
                      bottom: 250,
                    ),
                    decoration: AppDecoration.fillBluegray100.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/shoppingcart');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonImageView(
                              imagePath: ImageConstant.imMmagnifier,
                              height: getVerticalSize(
                                43.00,
                              ),
                              width: getHorizontalSize(
                                40.00,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "1",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtQuandoRegular15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: getVerticalSize(
                      540.00,
                    ),
                    width: getHorizontalSize(
                      430.00,
                    ),
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 18, 166, 225),
                        Color(0xff00ebd5)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Nombre del articulo",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtLemonRegular40,
                            maxLines: 2,
                          ),
                          const RatingBarIByitem(
                            rating: 3,
                          ),
                          _ShowCost(productCost: "15000"),
                          _WhyYourCost(product: args)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class _WhyYourCost extends StatelessWidget {
  const _WhyYourCost({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: getMargin(
              left: 33,
              top: 23,
              right: 33,
            ),
            decoration: AppDecoration.txtOutlineBlack9003f,
            child: Text(
              "Porque su precio??",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtLemonRegular25,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: getHorizontalSize(
              372.00,
            ),
            margin: getMargin(
              left: 33,
              top: 25,
              right: 24,
            ),
            child: Text(
              "msg_financial_scree",
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtQuandoRegular15Black900,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: getPadding(
              left: 33,
              top: 17,
              right: 33,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: getHorizontalSize(
                    77.00,
                  ),
                  decoration: AppDecoration.txtOutlineBlack9003f,
                  child: Text(
                    "lbl_tama_o",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtQuandoRegular15Black900,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 1,
                    bottom: 18,
                  ),
                  child: Text(
                    "msg_15_cm_x_25_cm_x",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtQuandoRegular15Black900,
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: getPadding(
              left: 33,
              top: 7,
              right: 33,
              bottom: 39,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: getHorizontalSize(
                    77.00,
                  ),
                  decoration: AppDecoration.txtOutlineBlack9003f,
                  child: Text(
                    "lbl_peso",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtQuandoRegular15Black900,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 15,
                    top: 2,
                    bottom: 16,
                  ),
                  child: Text(
                    "lbl_35_kgs",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtQuandoRegular15Black900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ShowCost extends StatelessWidget {
  const _ShowCost({
    Key? key,
    required this.productCost,
  }) : super(key: key);

  final String productCost;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          left: 33,
          top: 37,
          right: 33,
        ),
        decoration: AppDecoration.fillBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Padding(
          padding: getPadding(all: 15.00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Costo",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtLemonRegular25,
              ),
              Text(
                "c ${productCost.toString()}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtLemonRegular35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShowProductImage extends StatelessWidget {
  const _ShowProductImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: getPadding(
          bottom: 10,
        ),
        child: CommonImageView(
          imagePath: ImageConstant.imgRectangle12,
          height: getVerticalSize(
            330.00,
          ),
          width: getHorizontalSize(
            430.00,
          ),
        ),
      ),
    );
  }
}
