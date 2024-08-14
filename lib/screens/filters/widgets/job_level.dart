import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/bloc/filter/filter_bloc.dart';
import 'package:job_finder/bloc/filter/filter_event.dart';
import 'package:job_finder/bloc/filter/filter_state.dart';
import '../../../utils/colors.dart';

class JobLevel extends StatelessWidget {
  const JobLevel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> jobLevel = [
      'UI/UX Designer',
      'Frontend Developer',
      'Backend Developer',
      'Full Stack Developer',
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
                      previous.isJobchecked != current.isJobchecked,
                  builder: (context, state) {
                    return Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side:
                            const BorderSide(color: Colors.black54, width: 1.5),
                        activeColor: kPrimaryColor,
                        value: state.isJobchecked[index],
                        onChanged: (value) {
                          context.read<FilterBloc>().add(JobLevelChangedEvent(
                              value: value!, index: index));
                        });
                  },
                ),
                Expanded(
                  child: Text(
                    jobLevel[index],
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
