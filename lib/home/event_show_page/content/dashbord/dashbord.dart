import 'package:core/extension/padding/padding.dart';
import 'package:core/extension/size/size.dart';
import 'package:core/text_style/text_style.dart';
import 'package:flutter/material.dart';

class Dashbord extends StatelessWidget {
  const Dashbord(
      {super.key, required this.calculateAvarageRating, required this.size});
  final double calculateAvarageRating;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '00:00',
              style: titleStyle(context),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_off),
            ),
            const Icon(
              Icons.star_rounded,
              color: Colors.amber,
            ),
            Text(
              '(${calculateAvarageRating.toStringAsFixed(1)})',
              style: normalStyle(context),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
                size: context.width * 0.08,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.notifications,
              color: Colors.red,
            ),
            Expanded(
              child: Text(
                'plaj konserimiz yağmurdan dolayı yarına ertelenmiştir...',
                style: contentStyle(context),
              ),
            ),
          ],
        ).paddingLeft(
          size * 0.025,
        ),
      ],
    ).paddingAll(
      size * 0.025,
    );
  }
}
