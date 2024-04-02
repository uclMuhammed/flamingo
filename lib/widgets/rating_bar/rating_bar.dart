import 'package:flutter/material.dart';

class RatingBar extends StatefulWidget {
  const RatingBar({super.key, required this.onRatingChanged});
  final ValueChanged<double> onRatingChanged;

  @override
  State<StatefulWidget> createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  double _rating = 0;

  void _updateRating(double newRating) {
    setState(() {
      _rating = newRating;
      widget.onRatingChanged(_rating);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        final starColor = index < _rating ? Colors.amber : Colors.grey;
        return IconButton(
          icon: Icon(
            index < 1 ? Icons.star_rounded : Icons.star_rounded,
            color: starColor,
          ),
          onPressed: () => _updateRating(index + 1),
        );
      }),
    );
  }
}
