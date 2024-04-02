import 'package:core/extension/padding/padding.dart';
import 'package:core/extension/size/size.dart';
import 'package:core/text_style/text_style.dart';
import 'package:flamingo/widgets/buttons/custom_button.dart';
import 'package:flamingo/widgets/custom_image/custom_image.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({
    super.key,
    required this.sizeW,
    required this.eventTitle,
    required this.eventContent,
  });
  final double sizeW;
  final String eventTitle;
  final String eventContent;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.height * 0.05,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(0, 0),
                blurRadius: 25,
                spreadRadius: 25,
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              eventTitle,
              style: titleStyle(context),
            ).paddingAll(
              context.width * 0.05,
            ),
            SizedBox(width: sizeW * 0.3),
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
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: context.height * 0.15,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0, 0),
                    blurRadius: 25,
                    spreadRadius: 25,
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Spacer(),
            Row(
              children: [
                CustomImage(
                  assets: 'assets/persons/person1.png',
                  width: context.width * 0.2,
                  height: context.width * 0.2,
                  fit: BoxFit.fill,
                ).paddingSymetric(
                  0,
                  context.width * 0.03,
                ),
                CustomButton(
                    onPressed: () {},
                    text: 'Takip Et',
                    sizeWidth: context.width * 0.28,
                    sizeHeight: context.height * 0.01,
                    borderRadius: 200)
              ],
            ),
            Text(
              eventContent,
              overflow: TextOverflow.ellipsis,
              style: normalStyle(context),
            ).paddingSymetric(context.height * 0, context.width * 0.12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.share).paddingAll(context.width * 0.02),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
