import 'package:flutter/material.dart';
import 'package:job_finder/common/back_arrow.dart';
import 'package:job_finder/common/custom_appbar.dart';
import 'package:job_finder/screens/filters/widgets/salary_range.dart';
import 'package:job_finder/utils/extension.dart';
import 'widgets/company.dart';
import 'widgets/job_level.dart';
import 'widgets/working_model.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> location = [
      'United States',
      'Nepal',
      'Japan',
      'India',
      'China',
      'United Kingdom',
    ];

    final List<String> sortBy = [
      'Most Recent',
      '1 Weeks Ago',
      '4 Weeks Ago',
    ];

    final jobNature = [
      'Full Time',
      'Freelance',
    ];

    return Scaffold(
      appBar: const CustomAppbar(
        leading: BackArrow(),
        title: Text(
          'Search By Filters',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Location',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                8.0.verticalSpacer,
                DropdownMenu(
                  expandedInsets: const EdgeInsets.only(right: 0),
                  hintText: 'Select An Country',
                  dropdownMenuEntries: location.map((country) {
                    return DropdownMenuEntry(value: country, label: country);
                  }).toList(),
                ),
                16.0.verticalSpacer,
                const Text(
                  'Sort By',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                8.0.verticalSpacer,
                DropdownMenu(
                  hintText: 'Select An Date',
                  expandedInsets: const EdgeInsets.only(right: 0),
                  dropdownMenuEntries: sortBy
                      .map(
                          (date) => DropdownMenuEntry(value: date, label: date))
                      .toList(),
                ),
                16.0.verticalSpacer,
                const Text(
                  'Job  Nature',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                8.0.verticalSpacer,
                DropdownMenu(
                    hintText: 'Select Job Type',
                    expandedInsets: const EdgeInsets.only(right: 0),
                    dropdownMenuEntries: jobNature
                        .map<DropdownMenuEntry<String>>(
                            (job) => DropdownMenuEntry(value: job, label: job))
                        .toList()),
                24.0.verticalSpacer,
                const Text(
                  'Job  Level',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const JobLevel(),
                24.0.verticalSpacer,
                const Text(
                  'Working Model',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const WorkingModel(),
                24.0.verticalSpacer,
                const Text(
                  'Company',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const Company(),
                24.0.verticalSpacer,
                const Text(
                  'Salary  Range',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                8.0.verticalSpacer,
                const SalaryRangeSlider(),
                24.0.verticalSpacer,
                Row(
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Text('Reset Filter'))),
                    16.0.horizontalSpacer,
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Apply Filter')))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
