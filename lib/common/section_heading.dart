import 'package:flutter/material.dart';
import 'package:job_finder/utils/colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading(
      {super.key,
      required this.text,
      this.buttonTitle = 'See All',
      required this.onPressed,
      this.showActionButton = true});
  final String text, buttonTitle;
  final bool showActionButton;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      if (showActionButton)
        TextButton(
            style: TextButton.styleFrom(foregroundColor: kPrimaryColor),
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ))
    ]);
  }
}
