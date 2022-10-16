import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea1_danielcastro/controller/index.dart';

class PurshaseScreen extends StatelessWidget {
  PurshaseScreen({Key? key}) : super(key: key);

  final shoppingCarController = Get.put(ShoppingCartController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        Text("perros"),
        GetX<ShoppingCartController>(
          builder: (controller) {
            return ListView.builder(
                itemCount: controller.countItemsOnShoppingCart,
                itemBuilder: (context, index) => Card(
                      child:
                          Text(controller.selectedProduct[index].productName),
                    ));
          },
        ),

        // Container(
        //   child: GetX<ShoppingCartController>(
        //     builder: (controller) {
        //       return ElevatedButton(
        //           onPressed: () {
        //             controller.cleanData();
        //             //Navigator.pushNamed(context, "/thanks");
        //           },
        //           child: const Text("Comprar"));
        //     },
        //   ),
        // )
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/thanks");
            },
            child: const Text("Comprar"))
      ]),
    ));
  }
}
