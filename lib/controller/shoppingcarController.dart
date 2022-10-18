import 'package:tarea1_danielcastro/model/productoModel.dart';
import 'package:get/get.dart';

class ShoppingCartController extends GetxController {
  var selectedProduct = <ProductModel>[].obs;

  int get countItemsOnShoppingCart => selectedProduct.length;

  double get totalPrice =>
      selectedProduct.fold(0, (sum, item) => sum + item.price);

  addProductToShoppingCard(ProductModel product) {
    selectedProduct.add(product);

    Get.snackbar("Se agrego ${product.productName}",
        "Se acaba de agregar el producto ${product.productName} al carrito de compra",
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3));
  }

  removeProductToShoppingCard(ProductModel product) {
    if (selectedProduct.contains(product)) {
      selectedProduct.remove(product);
    }
  }

  cleanData() {
    selectedProduct.clear();
  }
}
