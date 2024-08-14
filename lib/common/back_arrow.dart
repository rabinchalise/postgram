import 'package:flutter/material.dart';
import 'package:job_finder/utils/colors.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
          padding: const EdgeInsets.all(14),
          decoration: const BoxDecoration(
              color: kSecondaryColor, shape: BoxShape.circle),
          child: const Icon(Icons.arrow_back)),
    );
  }
}
