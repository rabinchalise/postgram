import 'package:flutter/material.dart';
import 'package:job_finder/utils/colors.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon({
    super.key,
    required this.imgUrl,
  });
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(color: kSecondaryColor, shape: BoxShape.circle),
      child: Image.asset(
        imgUrl,
      ),
    );
  }
}
