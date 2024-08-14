import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/bloc/filter/filter_bloc.dart';
import 'package:job_finder/bloc/filter/filter_event.dart';
import 'package:job_finder/bloc/filter/filter_state.dart';
import 'package:job_finder/utils/colors.dart';

class SalaryRangeSlider extends StatelessWidget {
  const SalaryRangeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20.0),
          BlocBuilder<FilterBloc, FilterState>(
            builder: (context, state) => RangeSlider(
              inactiveColor: Colors.grey.shade300,
              activeColor: kPrimaryColor,
              min: 0,
              max: 500,
              values: RangeValues(state.minSalary, state.maxSalary),
              onChanged: (RangeValues values) {
                context
                    .read<FilterBloc>()
                    .add(MaxSalaryChangeEvent(maxValue: values.end));
                context
                    .read<FilterBloc>()
                    .add(MinSalaryChangeEvent(minValue: values.start));
              },
              divisions: 10,
              labels: RangeLabels(
                '\$${state.minSalary.toStringAsFixed(0)}',
                '\$${state.maxSalary.toStringAsFixed(0)}',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
