import 'package:flutter/material.dart';
import 'package:job_finder/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: FittedBox(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, color: kDarkerColor),
          ),
        ),
      ),
    );
  }
}
