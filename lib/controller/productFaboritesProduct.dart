import 'package:get/get.dart';
import 'package:tarea1_danielcastro/model/productoModel.dart';

class ProductFaboritesController extends GetxController {
  var favoritesProduct = <ProductModel>[].obs;

  int get countFaboritesProduct => favoritesProduct.length;

  @override
  void onInit() {
    super.onInit();

    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    var result = [
      ProductModel(
          1,
          'Protector de latex',
          'http://www.fremontgurdwara.org/wp-content/uploads/2020/06/no-image-icon-2-300x188.png',
          "Es un protector para el telefono",
          4.2,
          5000,
          'Protector',
          50),
      ProductModel(
          2,
          'Cable tipo C',
          'http://www.fremontgurdwara.org/wp-content/uploads/2020/06/no-image-icon-2-300x188.png',
          "Para telefono Andorid",
          4.5,
          3500,
          "Cable",
          50),
      ProductModel(
          3,
          'Cargador Generico QuicK Charge',
          'http://www.fremontgurdwara.org/wp-content/uploads/2020/06/no-image-icon-2-300x188.png',
          "Cargador de carga rapida",
          4.4,
          3500,
          "Cargador",
          50),
      ProductModel(
          4,
          'Vidrio temperado',
          'http://www.fremontgurdwara.org/wp-content/uploads/2020/06/no-image-icon-2-300x188.png',
          "Protector para la pantalla",
          4.4,
          3500,
          "Protector",
          50),
      ProductModel(
          5,
          'Vidrio temperado',
          'http://www.fremontgurdwara.org/wp-content/uploads/2020/06/no-image-icon-2-300x188.png',
          "Protector para la pantalla",
          4.4,
          3500,
          "Protector",
          50),
      ProductModel(
          6,
          'Soporte de mano',
          'http://www.fremontgurdwara.org/wp-content/uploads/2020/06/no-image-icon-2-300x188.png',
          "Soporte ergonomico para la mano",
          3.8,
          2500,
          "Soporte",
          50),
    ];

    favoritesProduct.addAll(result);
  }
}
