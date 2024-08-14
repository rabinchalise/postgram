import 'package:flutter/material.dart';
import 'package:job_finder/common/rounded_icons.dart';
import 'package:job_finder/utils/extension.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
            child: RoundedIcon(
              imgUrl: 'assets/icons/google.png',
            ),
          ),
          16.0.horizontalSpacer,
          const Flexible(child: RoundedIcon(imgUrl: 'assets/icons/apple.png')),
          16.0.horizontalSpacer,
          const Flexible(
              child: RoundedIcon(imgUrl: 'assets/icons/facebook.png'))
        ],
      ),
    );
  }
}
