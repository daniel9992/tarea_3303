import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tarea1_danielcastro/model/productoModel.dart';
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
      body: Center(
        child: Text("Estamos viendo el articulo # ${args.productName}"),
      ),
    ));
  }
}
