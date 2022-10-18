import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea1_danielcastro/controller/index.dart';
import 'package:tarea1_danielcastro/model/productoModel.dart';
import 'package:tarea1_danielcastro/theme/appStyle.dart';
import 'package:tarea1_danielcastro/utils/index.dart';
import 'package:tarea1_danielcastro/screens/widgets/index.dart';

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
    Navigator.pushNamed(context, '/shoppingcart');
  }

  searchBarEvent() {
    Navigator.pushNamed(context, '/searchbar');
  }

  addProductToShoppingCart(ProductModel product) {
    shoppingCarController.addProductToShoppingCard(product);
  }

  removeProductToSoppingCart(ProductModel product) {
    shoppingCarController.removeProductToShoppingCard(product);
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
                removeProductToSoppingCart: removeProductToSoppingCart),
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
                          ),
                        ],
                      ),
                      CustomElevatedButton(buyShoppingCard: buyShoppingCard)
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

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.buyShoppingCard,
  }) : super(key: key);

  final Function buyShoppingCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          buyShoppingCard();
        },
        child: Container(
          // ignore: sort_child_properties_last
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Comprar",
                style: TextStyle(
                  color: ColorConstant.whiteA700,
                  fontSize: getFontSize(
                    15,
                  ),
                  fontFamily: 'Lemon',
                  fontWeight: FontWeight.w400,
                )),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                begin: const Alignment(
                  1.0000000705531984,
                  -0.36486471563885203,
                ),
                end: const Alignment(
                  0.049586820853279256,
                  1.2297299330683025,
                ),
                colors: [
                  ColorConstant.deepPurple701,
                  ColorConstant.pink501,
                ],
              )),
        ));
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
    required this.removeProductToSoppingCart,
  }) : super(key: key);

  final ProductFaboritesController productFaboritesController;

  final Function addProductToShoppingCart;
  final Function removeProductToSoppingCart;

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
                    Navigator.pushNamed(context, "/details",
                        arguments: controller.favoritesProduct[index]);
                  },
                  child: ItemWidget(
                      product: controller.favoritesProduct[index],
                      removeProductToSoppingCart: removeProductToSoppingCart,
                      addProductToShoppingCart: addProductToShoppingCart),
                );
              },
            );
          })),
    );
  }
}

class ItemWidget extends StatefulWidget {
  ItemWidget({
    Key? key,
    required this.addProductToShoppingCart,
    required this.product,
    required this.removeProductToSoppingCart,
  }) : super(key: key);

  final Function addProductToShoppingCart;
  final Function removeProductToSoppingCart;
  final ProductModel product;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: getPadding(all: 8),
        child: Row(
          children: [
            CommonImageView(
              url: widget.product.productImage,
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
                    widget.product.productName,
                    style: AppStyle.txtLemonRegular15,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    widget.product.productDescription,
                    style: AppStyle.txtQuandoRegular15,
                    textAlign: TextAlign.start,
                  ),
                  RatingBarIByitem(
                    rating: widget.product.rating,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    widget.removeProductToSoppingCart(widget.product);
                    if (count != 0) {
                      setState(() {
                        count = count - 1;
                      });
                    }
                  },
                  child: Icon(
                    Icons.remove,
                    color: ColorConstant.deepPurple70059,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(count.toString()),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      count = count + 1;
                    });
                    widget.addProductToShoppingCart(widget.product);
                  },
                  child: Icon(
                    Icons.add,
                    color: ColorConstant.deepPurple70059,
                  ),
                ),
                // addProductToShoppingCart(product);
              ],
            )
          ],
        ),
      ),
    );
  }
}
