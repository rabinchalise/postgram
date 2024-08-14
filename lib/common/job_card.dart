import 'package:flutter/material.dart';
import 'package:job_finder/screens/job_details/job_details.dart';
import 'package:job_finder/utils/extension.dart';
import '../models/job_model.dart';
import '../utils/colors.dart';
import 'custom_button.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    super.key,
    required this.job,
  });

  final Job job;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => JobDetailsScreen(
                    job: job,
                  ))),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: kAccentColor),
                        child: Image.asset(
                          job.companyLogo,
                          height: 32,
                          width: 32,
                        ),
                      ),
                      8.0.horizontalSpacer,
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                job.companyName,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                job.location,
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Icon(
                  Icons.bookmark,
                  color: kPrimaryColor,
                  size: 32,
                )
              ],
            ),
            20.0.verticalSpacer,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          job.jobTitle,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      6.0.verticalSpacer,
                      FittedBox(
                        child: Text(
                          job.day,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FittedBox(
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: '\$${job.price}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w500)),
                          const TextSpan(
                              text: '/m',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey))
                        ])),
                      ),
                      6.0.verticalSpacer,
                      FittedBox(
                        child: Text(
                          '${job.applicantNo} Applicants',
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            20.0.verticalSpacer,
            Row(
              children: [
                Flexible(
                  child: CustomButton(
                    text: job.jobNature,
                  ),
                ),
                Flexible(child: CustomButton(text: job.workingModel)),
                Flexible(
                  child: CustomButton(
                    text: job.experienceLevel,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
