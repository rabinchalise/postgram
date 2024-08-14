import 'package:flutter/material.dart';
import 'package:job_finder/common/back_arrow.dart';
import 'package:job_finder/common/custom_appbar.dart';
import 'package:job_finder/utils/extension.dart';

class JobPostScreen extends StatelessWidget {
  const JobPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> location = [
      {'value': '1', 'label': 'United States'},
      {'value': '2', 'label': 'Nepal'},
      {'value': '3', 'label': 'Japan'},
      {'value': '4', 'label': 'India'},
      {'value': '5', 'label': 'China'},
      {'value': '6', 'label': 'United Kingdom'}
    ];
    final List<Map<String, String>> jobNature = [
      {'value': '1', 'label': 'Full Time'},
      {'value': '2', 'label': 'Freelance'},
    ];
    final List<Map<String, String>> jobLevel = [
      {'value': '1', 'label': 'UI/UX Designer'},
      {'value': '2', 'label': 'Flutter Developer'},
      {'value': '3', 'label': 'Web Developer'},
      {'value': '4', 'label': 'Graphic Designer'},
    ];

    final List<Map<String, String>> workingModel = [
      {'value': '1', 'label': 'On-Site'},
      {'value': '2', 'label': 'Remote'},
      {'value': '3', 'label': 'Hybrid'},
    ];

    final List<Map<String, String>> experienceLevel = [
      {'value': '1', 'label': 'Entry Level'},
      {'value': '2', 'label': 'Internship'},
      {'value': '3', 'label': 'Mid Senior'},
      {'value': '4', 'label': 'Senior'},
    ];

    return Scaffold(
      appBar: const CustomAppbar(
        leading: BackArrow(),
        title: Text(
          'Job Post',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Job  Nature',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              8.0.verticalSpacer,
              const TextField(
                cursorColor: Colors.black54,
                decoration: InputDecoration(hintText: 'Write A Title'),
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
                      .map<DropdownMenuEntry<String>>((data) =>
                          DropdownMenuEntry(
                              value: data['value'].toString(),
                              label: data['label'].toString()))
                      .toList()),
              16.0.verticalSpacer,
              const Text(
                'Location',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              8.0.verticalSpacer,
              DropdownMenu(
                expandedInsets: const EdgeInsets.only(right: 0),
                hintText: 'Location',
                dropdownMenuEntries: location
                    .map<DropdownMenuEntry<String>>((data) => DropdownMenuEntry(
                        value: data['value'].toString(),
                        label: data['label'].toString()))
                    .toList(),
              ),
              16.0.verticalSpacer,
              const Text(
                'Experience Level',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              8.0.verticalSpacer,
              DropdownMenu(
                expandedInsets: const EdgeInsets.only(right: 0),
                hintText: 'Experience Level',
                dropdownMenuEntries: experienceLevel
                    .map<DropdownMenuEntry<String>>((data) => DropdownMenuEntry(
                        value: data['value'].toString(),
                        label: data['label'].toString()))
                    .toList(),
              ),
              16.0.verticalSpacer,
              const Text(
                'Job Level',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              8.0.verticalSpacer,
              DropdownMenu(
                expandedInsets: const EdgeInsets.only(right: 0),
                hintText: 'Select Job Level',
                dropdownMenuEntries: jobLevel
                    .map<DropdownMenuEntry<String>>((data) => DropdownMenuEntry(
                        value: data['value'].toString(),
                        label: data['label'].toString()))
                    .toList(),
              ),
              16.0.verticalSpacer,
              const Text(
                'Working Model',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              8.0.verticalSpacer,
              DropdownMenu(
                expandedInsets: const EdgeInsets.only(right: 0),
                hintText: 'Select Working Type',
                dropdownMenuEntries: workingModel
                    .map<DropdownMenuEntry<String>>((data) => DropdownMenuEntry(
                        value: data['value'].toString(),
                        label: data['label'].toString()))
                    .toList(),
              ),
              16.0.verticalSpacer,
              const Text(
                'Salary ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              8.0.verticalSpacer,
              const TextField(
                style: TextStyle(fontSize: 16, color: Colors.black54),
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                    prefixText: '\$ ', hintText: 'Amount of Salary'),
              ),
              16.0.verticalSpacer,
              const Text(
                'Full Description ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              8.0.verticalSpacer,
              const TextField(
                maxLines: 4,
                style: TextStyle(fontSize: 16, color: Colors.black54),
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                  hintText: 'Write A Description..',
                ),
              ),
              16.0.verticalSpacer,
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Post Job')))
            ],
          ),
        ),
      ),
    );
  }
}
