import 'package:core/extension/padding/padding.dart';
import 'package:core/extension/size/size.dart';
import 'package:core/text_style/text_style.dart';
import 'package:flamingo/home/event_show_page/content/comments/comments.dart';
import 'package:flamingo/home/event_show_page/content/dashbord/dashbord.dart';
import 'package:flamingo/home/event_show_page/content/ratings/ratings.dart';
import 'package:flamingo/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class EventContent extends StatefulWidget {
  const EventContent({super.key});

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
    rating = value;
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Dashbord(
            calculateAvarageRating: calculateAvarageRating(),
          ),
          Text(
            'Plaj konserimize herkezi bekleriz',
            style: normalStyle(context),
          ),
          const SizedBox().paddingTop(context.height * 0.05),
          Ratings(
            saveRating: saveRating,
            rating: rating,
            onRatingChanged: onRatingChanged,
          ),
          const SizedBox().paddingTop(context.height * 0.01),
          CustomButton(
            onPressed: () {
              _toggleJoinStatus();
            },
            text: joined ? 'A Y R I L' : 'K A T I L',
            sizeWidth: context.width * 0.3,
            sizeHeight: context.height * 0.05,
            borderRadius: 10,
            color: joined ? Colors.red : null,
          ).paddingTop(context.width * 0.05),
          const Comments(),
        ],
      ).paddingTop(context.width * 0.3),
    );
  }
}