import 'package:core/extension/padding/padding.dart';
import 'package:core/extension/size/size.dart';
import 'package:core/text_style/text_style.dart';
import 'package:flutter/material.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key, required this.calculateAvarageRating});
  final double calculateAvarageRating;
  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
          '(${widget.calculateAvarageRating.toStringAsFixed(1)})',
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
    ).paddingAll(context.width * 0.05);
  }
}
