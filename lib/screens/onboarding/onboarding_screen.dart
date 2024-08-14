import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/bloc/onboarding/onboarding_bloc.dart';
import 'package:job_finder/bloc/onboarding/onboarding_event.dart';
import 'package:job_finder/bloc/onboarding/onboarding_state.dart';

import 'widgets/onboarding_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        body: SafeArea(
            child: BlocConsumer<OnBoardingBloc, OnBoardingState>(
                listener: (context, state) => _controller.jumpToPage(
                      state.index,
                    ),
                buildWhen: (previous, current) =>
                    previous.index != current.index,
                builder: (context, state) {
                  return PageView(
                    controller: _controller,
                    onPageChanged: (value) => context
                        .read<OnBoardingBloc>()
                        .add(OnPageChangedEvent(value: value)),
                    children: [
                      OnBoardingPage(
                        imgUrl: 'assets/images/job_search.png',
                        title: 'Explore Your Ideal \nCareer Path',
                        subTitle:
                            'Finding your ideal career path is about creating a fulfilling and sustainable professional journey.',
                        controller: _controller,
                        index: 0,
                      ),
                      OnBoardingPage(
                        imgUrl: 'assets/images/growth.png',
                        title: 'We Provide Various \nJob Opportunities',
                        subTitle:
                            'Unlock your potential with our diverse array of job opportunities tailored to match your skills. ',
                        controller: _controller,
                        index: 1,
                      ),
                      OnBoardingPage(
                        imgUrl: 'assets/images/work.png',
                        title: 'Attain Your Ideal \nEmployment',
                        subTitle:
                            'Discover your perfect career fit with our tailored approach to matching candidates with their ideal.',
                        controller: _controller,
                        index: 2,
                      ),
                    ],
                  );
                })));
  }
}
