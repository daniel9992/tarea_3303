import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tarea1_danielcastro/utils/index.dart';

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
      ignoreGestures: true,
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
