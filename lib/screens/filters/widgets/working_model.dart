import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/bloc/filter/filter_event.dart';

import '../../../bloc/filter/filter_bloc.dart';
import '../../../bloc/filter/filter_state.dart';
import '../../../utils/colors.dart';

class WorkingModel extends StatelessWidget {
  const WorkingModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> workingModel = [
      'All',
      'On-Site',
      'Remote',
      'Hybrid',
    ];
    return SizedBox(
      height: 100,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 50),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Row(
              children: [
                BlocBuilder<FilterBloc, FilterState>(
                  buildWhen: (previous, current) =>
                      previous.isWorkingchecked != current.isWorkingchecked,
                  builder: (context, state) {
                    return Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            const BorderSide(color: Colors.black54, width: 1.5),
                        activeColor: kPrimaryColor,
                        value: state.isWorkingchecked[index],
                        onChanged: (value) {
                          context.read<FilterBloc>().add(
                              WorkingModelChangeEvent(
                                  value: value!, index: index));
                        });
                  },
                ),
                Expanded(
                  child: Text(
                    workingModel[index],
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                )
              ],
            );
          }),
    );
  }
}
