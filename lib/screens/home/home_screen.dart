import 'package:flutter/material.dart';
import 'package:job_finder/common/section_heading.dart';
import 'package:job_finder/dummydata/dummy_data.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';

import '../../common/job_card.dart';
import '../../common/search_filters_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/profile.webp'),
                        ),
                        8.0.verticalSpacer,
                        const Text(
                          'Rabin Chalise',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: const BoxDecoration(
                          color: kSecondaryColor, shape: BoxShape.circle),
                      child: Image.asset(
                        'assets/icons/notification.png',
                        height: 24,
                      ),
                    )
                  ],
                ),
                16.0.verticalSpacer,
                const Text(
                  'Find Your Perfect Job',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                16.0.verticalSpacer,
                const SearchFilterSection(),
                16.0.verticalSpacer,
                SectionHeading(
                  text: 'Popular Jobs',
                  onPressed: () {},
                ),
                10.0.verticalSpacer,
                // LayoutBuilder(builder: (context, constraints) {
                //   return constraints.maxWidth < 600
                //       ? SizedBox(
                //           height: 250,
                //           child: ListView.builder(
                //               scrollDirection: Axis.horizontal,
                //               itemCount: DummyData.jobs.length,
                //               itemBuilder: (context, index) {
                //                 final jobs = DummyData.jobs;
                //                 return JobCard(job: jobs[index]);
                //               }),
                //         ):
                SizedBox(
                  height: 260,
                  child: GridView(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 0.7,
                              mainAxisSpacing: 16),
                      children: DummyData.jobs
                          .map((job) => JobCard(job: job))
                          .where((element) => element.job.isPopular == true)
                          .toList()),
                ),

                // })
                16.0.verticalSpacer,
                SectionHeading(text: 'Recent Jobs', onPressed: () {}),
                10.0.verticalSpacer,
                ...DummyData.jobs
                    .map((job) => JobCard(job: job))
                    .where((element) => element.job.isRecentJobs == true)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
