import 'package:core/extension/size/size.dart';
import 'package:core/text_style/text_style.dart';
import 'package:flamingo/widgets/buttons/custom_button.dart';
import 'package:flamingo/widgets/rating_bar/rating_bar.dart';
import 'package:flutter/material.dart';

class Ratings extends StatefulWidget {
  const Ratings({
    super.key,
    required this.saveRating,
    required this.rating,
    required this.onRatingChanged,
  });

  final Function() saveRating;
  final Function(double) onRatingChanged;
  final double rating;

  @override
  State<Ratings> createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Puanınız: ${widget.rating}',
          style: normalStyle(context),
        ),
        RatingBar(onRatingChanged: (rating) {
          setState(() {});
          widget.onRatingChanged(rating);
        }),
        CustomButton(
          onPressed: () {
            widget.saveRating();
          },
          text: 'Puanla',
          sizeWidth: context.width * 0.3,
          sizeHeight: context.height * 0.05,
          borderRadius: 10,
        ),
      ],
    );
  }
}