import 'package:core/extension/padding/padding.dart';
import 'package:core/extension/size/size.dart';
import 'package:core/text_style/text_style.dart';
import 'package:flamingo/widgets/custom_image/custom_image.dart';
import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  const Comments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Yorumlar',
          style: titleStyle(context),
        ).paddingAll(context.width * 0.05),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            10,
            (index) => Container(
              width: context.width,
              height: context.height * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.secondary),
              child: Row(
                children: [
                  CustomImage(
                    assets: 'assets/persons/person2.png',
                    width: context.width * 0.2,
                    height: context.width * 0.2,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Kullanıcı adı',
                            style: normalStyle(context),
                          ),
                          Row(
                            children: List.generate(
                              5,
                              (index) {
                                final starColor =
                                    index < 3 ? Colors.amber : Colors.grey;
                                return Icon(Icons.star_rounded,
                                    size: 20, color: starColor);
                              },
                            ),
                          )
                        ],
                      ),
                      Text(
                        'İçerik',
                        style: contentStyle(context),
                      ),
                    ],
                  ).paddingTop(context.height * 0.02),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down))
                ],
              ),
            ).paddingAll(context.width * 0.015),
          ),
        ).paddingAll(context.width * 0.05)
      ],
    );
  }
}
