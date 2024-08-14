import 'package:flutter/material.dart';
import 'package:job_finder/common/job_card.dart';
import 'package:job_finder/common/search_filters_section.dart';
import 'package:job_finder/dummydata/dummy_data.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'Jobs',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SearchFilterSection(),
                16.0.verticalSpacer,
                TabBar(
                    overlayColor:
                        WidgetStatePropertyAll(kPrimaryColor.withOpacity(0.1)),
                    tabAlignment: TabAlignment.start,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                    labelStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                    isScrollable: true,
                    labelColor: kPrimaryColor,
                    unselectedLabelColor: kTertiaryColor,
                    indicatorColor: kPrimaryColor,
                    tabs: const [
                      Tab(child: Text('Available')),
                      Tab(child: Text('Saved')),
                      Tab(
                        child: Text('Hire'),
                      )
                    ]),
                10.0.verticalSpacer,
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: DummyData.jobs.length,
                          itemBuilder: (context, index) {
                            return JobCard(job: DummyData.jobs[index]);
                          }),
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: DummyData.jobs.length,
                          itemBuilder: (context, index) {
                            return JobCard(job: DummyData.jobs[index]);
                          }),
                      ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: DummyData.jobs.length,
                          itemBuilder: (context, index) {
                            return JobCard(job: DummyData.jobs[index]);
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
