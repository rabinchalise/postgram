import 'package:flutter/material.dart';
import 'package:job_finder/common/back_arrow.dart';
import 'package:job_finder/common/custom_appbar.dart';
import 'package:job_finder/models/job_model.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';
import '../job_apply/job_apply_screen.dart';
import 'widgets/job_container.dart';
import 'widgets/job_expansion_tile.dart';
import 'widgets/job_header.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key, required this.job});
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        leading: BackArrow(),
        title: Text(
          'Job Details',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(
            Icons.bookmark,
            size: 26,
            color: kPrimaryColor,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JobDetailsHeader(job: job),
              16.0.verticalSpacer,
              Row(
                children: [
                  Expanded(
                      child: JobContainer(
                    title: 'Job Type',
                    subTitle: job.jobNature,
                  )),
                  16.0.horizontalSpacer,
                  Expanded(
                      child: JobContainer(
                    title: 'Working Model',
                    subTitle: job.workingModel,
                  ))
                ],
              ),
              16.0.verticalSpacer,
              Row(
                children: [
                  Expanded(
                      child: JobContainer(
                    title: 'Experience Level',
                    subTitle: job.experienceLevel,
                  )),
                  16.0.horizontalSpacer,
                  Expanded(
                      child: JobContainer(
                    title: 'Salary',
                    subTitle: '\$ ${job.price}/m',
                  ))
                ],
              ),
              16.0.verticalSpacer,
              JobExpansionTile(
                title: 'Description',
                subTitle: job.description,
              ),
              16.0.verticalSpacer,
              JobExpansionTile(
                  title: 'Requirements', subTitle: job.requirement.first),
              16.0.verticalSpacer,
              JobExpansionTile(
                  title: 'Responsibilities',
                  subTitle: job.responsibilities.first),
              40.0.verticalSpacer,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const JobApplyScreen())),
                    child: const Text('Apply For Job')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
