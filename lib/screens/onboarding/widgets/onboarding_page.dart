import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/bloc/onboarding/onboarding_bloc.dart';
import 'package:job_finder/bloc/onboarding/onboarding_event.dart';
import 'package:job_finder/screens/welcome/welcome_screen.dart';
import 'package:job_finder/utils/extension.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/colors.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.subTitle,
    required this.controller,
    required this.index,
  });
  final String imgUrl;
  final String title;
  final String subTitle;
  final PageController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: FittedBox(
                  child: TextButton(
                    onPressed: () {
                      context.read<OnBoardingBloc>().add(OnBoardingSkipEvent());
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(imgUrl))),
            ),
          ),
          20.0.verticalSpacer,
          Text(
            title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          20.0.verticalSpacer,
          Text(
            textAlign: TextAlign.center,
            subTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          ),
          const Spacer(),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            onDotClicked: (int index) => context
                .read<OnBoardingBloc>()
                .add(DotIndexChangeEvent(index: index)),
            effect: ExpandingDotsEffect(
                dotColor: Colors.grey.shade300,
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: kPrimaryColor),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (index == 2) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (ctx) => const WelcomeScreen()));
                } else {
                  context.read<OnBoardingBloc>().add(OnBoardingNextEvent());
                }
              },
              child: const Text('Next'),
            ),
          ),
          20.0.verticalSpacer
        ],
      ),
    );
  }
}
