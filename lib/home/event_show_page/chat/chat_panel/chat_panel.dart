import 'package:core/extension/padding/padding.dart';
import 'package:core/extension/size/size.dart';
import 'package:core/text_style/text_style.dart';
import 'package:flutter/material.dart';

class ChatPanel extends StatelessWidget {
  const ChatPanel({
    super.key,
    required this.size,
  });
  final BoxConstraints size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: List.generate(
            10,
            (index) => Container(
              width: context.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kullanıcı adı',
                          style: normalStyle(context),
                        ),
                        const SizedBox().paddingAll(size.maxHeight * 0.01),
                        Text(
                          'İçerikOJŞEBNFPNONĞIJbshnefnğbobnjNHĞEOFnğofnĞOEIFKKnğopojnğEFONJNPNOJNPEfefoğıjknnsnnfghoığknshgoınğksndkhhghnopıkedk',
                          style: contentStyle(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ).paddingOnly(
                size.maxWidth * 0.03,
                size.maxWidth * 0.03,
                size.maxWidth * 0.03,
                size.maxWidth * 0.03,
              ),
            ).paddingOnly(
              size.maxHeight * 0.03,
              size.maxWidth * 0.15,
              size.maxWidth * 0.03,
              size.maxWidth * 0.03,
            ),
          ),
        ),
      ),
    );
  }
}
