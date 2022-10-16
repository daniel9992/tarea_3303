import 'package:get/get.dart';
import 'package:tarea1_danielcastro/model/productoModel.dart';

class ShoppingCartController extends GetxController {
  var selectedProduct = <ProductModel>[].obs;

  int get countItemsOnShoppingCart => selectedProduct.length;

  double get totalPrice =>
      selectedProduct.fold(0, (sum, item) => sum + item.price);

  addProductToShoppingCard(ProductModel product) {
    print("as agregado el articulo ${product.productName}");
    selectedProduct.add(product);
  }

  removeProductToShoppingCard(ProductModel product) {
    if (!selectedProduct.contains(product)) {
      return;
    }
    int index = selectedProduct.indexOf(product);
    selectedProduct.insert(index, product);
  }

  cleanData() {
    selectedProduct.clear();
  }
}
