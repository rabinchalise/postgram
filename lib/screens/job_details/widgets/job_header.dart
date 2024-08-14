import 'package:flutter/material.dart';
import 'package:job_finder/utils/extension.dart';

import '../../../models/job_model.dart';
import '../../../utils/colors.dart';

class JobDetailsHeader extends StatelessWidget {
  const JobDetailsHeader({
    super.key,
    required this.job,
  });

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: const BoxDecoration(
                color: kAccentColor, shape: BoxShape.circle),
            child: Image.asset(job.companyLogo),
          ),
          10.0.verticalSpacer,
          Text(
            job.jobTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            job.location,
            style: const TextStyle(fontSize: 16, color: Colors.black54),
          )
        ],
      ),
    );
  }
}
