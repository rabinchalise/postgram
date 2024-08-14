import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/bloc/filter/filter_bloc.dart';
import 'package:job_finder/bloc/onboarding/onboarding_bloc.dart';
import 'package:job_finder/screens/splash_screen.dart';
import 'bloc/bottom_navbr/bottom_navbr_bloc.dart';
import 'utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnBoardingBloc>(
          create: (context) => OnBoardingBloc(),
        ),
        BlocProvider<FilterBloc>(create: (context) => FilterBloc()),
        BlocProvider<BottomNavbrBloc>(
          create: (context) => BottomNavbrBloc(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Job Finder',
          theme: TAppTheme.lightTheme,
          home: const SplashScreen()),
    );
  }
}
