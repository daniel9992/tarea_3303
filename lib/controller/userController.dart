import 'dart:math';

import 'package:get/get.dart';
import 'package:tarea1_danielcastro/model/userModel.dart';

class UserController extends GetxController {
  var currentUser = UserModel(
      1,
      'Admin',
      'https://cdn.imgbin.com/2/21/11/imgbin-computer-icons-others-7yfAEzXSZHZDXpYrstq2zBP4U.jpg',
      1);

  cleanData() {
    currentUser = UserModel(
        1,
        'Admin',
        'https://cdn.imgbin.com/2/21/11/imgbin-computer-icons-others-7yfAEzXSZHZDXpYrstq2zBP4U.jpg',
        1);
  }

  @override
  void onInit() {
    super.onInit();

    fetchUser();
  }

  void fetchUser() {
    var user = UserModel(
        1,
        'Admin',
        'https://cdn.imgbin.com/2/21/11/imgbin-computer-icons-others-7yfAEzXSZHZDXpYrstq2zBP4U.jpg',
        1);
    currentUser = user;
  }
}
