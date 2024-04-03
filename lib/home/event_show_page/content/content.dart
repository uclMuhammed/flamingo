import 'package:core/extension/padding/padding.dart';
import 'package:core/extension/size/size.dart';
import 'package:core/text_style/text_style.dart';
import 'package:flamingo/home/event_show_page/content/comments/comments.dart';
import 'package:flamingo/home/event_show_page/content/dashbord/dashbord.dart';
import 'package:flamingo/home/event_show_page/content/ratings/ratings.dart';
import 'package:flamingo/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class EventContent extends StatefulWidget {
  const EventContent({
    super.key,
  });

  @override
  State<EventContent> createState() => _EventContentState();
}

class _EventContentState extends State<EventContent> {
  double rating = 3;
  bool joined = false;

  List<double> ratings = [];

  void _toggleJoinStatus() {
    setState(() {
      joined = !joined;
    });
  }

  void onRatingChanged(double value) {
    setState(() {
      rating = value;
    });
  }

  void saveRating() {
    setState(
      () {
        ratings.add(rating);
      },
    );
  }

  double calculateAvarageRating() {
    if (ratings.isEmpty) return 0;
    double total = 0;
    for (var rating in ratings) {
      total += rating;
    }
    return total / ratings.length;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Dashbord(
                calculateAvarageRating: calculateAvarageRating(),
                size: size.maxWidth,
              ),
              //Line
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                width: size.maxWidth,
                height: 2,
              ).paddingSymetric(context.width * 0, context.width * 0.05),
              //Line
              Text(
                'Plaj konserimize herkezi bekleriz',
                style: normalStyle(context),
              ).paddingAll(context.width * 0.05),
              CustomButton(
                onPressed: () {
                  _toggleJoinStatus();
                },
                text: joined ? 'A Y R I L' : 'K A T I L',
                sizeWidth: context.width * 0.35,
                sizeHeight: context.height * 0.05,
                borderRadius: 10,
                color: joined ? Colors.red : null,
              ).paddingAll(context.width * 0.05),
              //Line
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                width: size.maxWidth,
                height: 2,
              ).paddingSymetric(context.width * 0, context.width * 0.05),
              //Line
              Ratings(
                saveRating: saveRating,
                rating: rating,
                onRatingChanged: onRatingChanged,
              ),
              //Line
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                width: size.maxWidth,
                height: 2,
              ).paddingSymetric(context.width * 0, context.width * 0.05),
              //Line
              const Comments(),
            ],
          ),
        );
      },
    );
  }
}
