import 'package:get/state_manager.dart';
import 'package:tarea1_danielcastro/model/productoModel.dart';

class ShoppingCardModel {
  final int? shoppingid;
  final String? username;
  final int? userid;
  final List<ProductModel>? selectedProduct;
  final double? total;

  ShoppingCardModel(this.shoppingid, this.username, this.userid,
      this.selectedProduct, this.total);
}
