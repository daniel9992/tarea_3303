import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea1_danielcastro/controller/index.dart';
import 'package:tarea1_danielcastro/model/productoModel.dart';
import 'package:tarea1_danielcastro/theme/appStyle.dart';
import 'package:tarea1_danielcastro/utils/index.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final productFaboritesController = Get.put(ProductFaboritesController());

  final shoppingCarController = Get.put(ShoppingCartController());

  final userController = Get.put(UserController());

  String name = "Admin";
  String img =
      'https://cdn.imgbin.com/2/21/11/imgbin-computer-icons-others-7yfAEzXSZHZDXpYrstq2zBP4U.jpg';

  buyEvent() {
    Navigator.pushNamed(context, '/purshase');
  }

  searchBarEvent() {
    Navigator.pushNamed(context, '/searchbar');
  }

  addProductToShoppingCart(ProductModel product) {
    shoppingCarController.addProductToShoppingCard(product);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
          height: getVerticalSize(
            932.00,
          ),
          width: getHorizontalSize(
            430.00,
          ),
          child: Stack(children: [
            const BackgroundWidget(),
            CurrentUserDataWidget(
              nameUser: name,
              image: img,
              buyShoppingCard: buyEvent,
              shoppingCarController: shoppingCarController,
            ),
            ShearchBar(searchBarEvent: searchBarEvent),
            ProductListContainer(
              productFaboritesController: productFaboritesController,
              addProductToShoppingCart: addProductToShoppingCart,
            ),
          ])),
    ));
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonImageView(
      imagePath: ImageConstant.imgBackgroundCompleto,
      height: getVerticalSize(
        932.00,
      ),
      width: getHorizontalSize(
        430.00,
      ),
    );
  }
}

class CurrentUserDataWidget extends StatelessWidget {
  const CurrentUserDataWidget({
    Key? key,
    required this.nameUser,
    required this.image,
    required this.buyShoppingCard,
    required this.shoppingCarController,
  }) : super(key: key);

  final String nameUser;
  final String image;
  final Function buyShoppingCard;

  final ShoppingCartController shoppingCarController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
          height: getVerticalSize(
            150.00,
          ),
          width: getHorizontalSize(
            305.00,
          ),
          margin: getMargin(left: 10, top: 35),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        child: Text(
                          nameUser,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtLemonRegular20,
                        ),
                      ),
                      Row(
                        children: [
                          CommonImageView(
                            imagePath: ImageConstant.imMmagnifier,
                            height: 50.00,
                            width: 50.00,
                          ),
                          SizedBox(
                            width: 60,
                            child: GetX<ShoppingCartController>(
                              builder: (controller) {
                                return Text(
                                  controller.countItemsOnShoppingCart
                                      .toString(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtLemonRegular20,
                                );
                              },
                            ),
                            // child: Text(
                            //   countShoppingCard.toString(),
                            //   overflow: TextOverflow.ellipsis,
                            //   textAlign: TextAlign.center,
                            //   style: AppStyle.txtLemonRegular20,
                            // ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            buyShoppingCard();
                          },
                          child: const Text("Comprar"))
                    ],
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          padding: getPadding(all: 15),
                          height: getVerticalSize(
                            119.00,
                          ),
                          width: getHorizontalSize(
                            131.00,
                          ),
                          margin: getMargin(
                            left: 35,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.bluegray100,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          child: CommonImageView(
                            url: image,
                            height: 119.00,
                            width: 131.00,
                            color: ColorConstant.bluegray100,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}

class ShearchBar extends StatelessWidget {
  const ShearchBar({
    Key? key,
    this.searchBarEvent,
  }) : super(key: key);

  final searchBarEvent;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
          height: getVerticalSize(
            65.00,
          ),
          width: getHorizontalSize(
            400.00,
          ),
          margin: getMargin(left: 10, top: 200),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () => searchBarEvent(),
              child: TextField(
                decoration: InputDecoration(
                    enabled: false,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(width: 0.8)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 0.8, color: Theme.of(context).primaryColor)),
                    hintText: "Search Flutter Hope",
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    suffixIcon: IconButton(
                        icon: const Icon(Icons.clear), onPressed: () {})),
              ),
            ),
          )),
    );
  }
}

class ProductListContainer extends StatelessWidget {
  const ProductListContainer({
    Key? key,
    required this.productFaboritesController,
    required this.addProductToShoppingCart,
  }) : super(key: key);

  final ProductFaboritesController productFaboritesController;

  final Function addProductToShoppingCart;

  redirectProductDetailScreen(ProductModel product) {
    print("vamos a ver los detalles del producto ${product.productName}");
    //Navigator.pushNamed(context, "/details");
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: getVerticalSize(
            650.00,
          ),
          width: getHorizontalSize(
            415.00,
          ),
          margin: getMargin(bottom: 5),
          child: GetX<ProductFaboritesController>(builder: (controller) {
            return ListView.builder(
              itemCount: controller.countFaboritesProduct,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // redirectProductDetailScreen(
                    //      controller.favoritesProduct[index]);
                    Navigator.pushNamed(context, "/details",
                        arguments: controller.favoritesProduct[index]);
                  },
                  child: Card(
                    child: Padding(
                      padding: getPadding(all: 8),
                      child: Row(
                        children: [
                          CommonImageView(
                            url:
                                controller.favoritesProduct[index].productImage,
                            height: getVerticalSize(70.00),
                            width: getHorizontalSize(70),
                          ),
                          SizedBox(
                            width: getHorizontalSize(15),
                          ),
                          Container(
                            width: getHorizontalSize(230.00),
                            padding: getPadding(left: 5, right: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller
                                      .favoritesProduct[index].productName,
                                  style: AppStyle.txtLemonRegular15,
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  controller.favoritesProduct[index]
                                      .productDescription,
                                  style: AppStyle.txtQuandoRegular15,
                                  textAlign: TextAlign.start,
                                ),
                                RatingBarIByitem(
                                  rating:
                                      controller.favoritesProduct[index].rating,
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                addProductToShoppingCart(
                                    controller.favoritesProduct[index]);
                              },
                              child: Icon(
                                Icons.plus_one,
                                color: ColorConstant.whiteA700,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          })),
    );
  }
}

class RatingBarIByitem extends StatelessWidget {
  const RatingBarIByitem({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 0,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemSize: getVerticalSize(
        21.00,
      ),
      itemCount: 5,
      updateOnDrag: true,
      onRatingUpdate: (rating) {},
      itemBuilder: (context, _) {
        return const Icon(
          Icons.star,
          color: Colors.amber,
        );
      },
    );
  }
}
