import 'package:flutter/material.dart';
import 'package:job_finder/utils/extension.dart';

import '../../../utils/colors.dart';

class JobContainer extends StatelessWidget {
  const JobContainer({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.black54),
          ),
          8.0.verticalSpacer,
          Text(
            subTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
