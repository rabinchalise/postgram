import 'package:flutter/material.dart';
import 'package:job_finder/common/back_arrow.dart';
import 'package:job_finder/common/custom_appbar.dart';
import 'package:job_finder/screens/job_apply/widgets/file_picker_container.dart';
import 'package:job_finder/utils/extension.dart';

class JobApplyScreen extends StatelessWidget {
  const JobApplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        leading: BackArrow(),
        title: Text(
          'Job Apply',
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
                'Applicant Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              8.0.verticalSpacer,
              const TextField(
                decoration: InputDecoration(hintText: 'Full Name'),
              ),
              16.0.verticalSpacer,
              const Text(
                'Email Address',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              8.0.verticalSpacer,
              const TextField(
                decoration: InputDecoration(hintText: 'Email Address'),
              ),
              16.0.verticalSpacer,
              const Text(
                'Upload CV or Resume',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              8.0.verticalSpacer,
              const FilePickerContainer(),
              16.0.verticalSpacer,
              const Text(
                'Your Message',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              8.0.verticalSpacer,
              const TextField(
                cursorColor: Colors.black54,
                maxLines: 4,
                decoration: InputDecoration(hintText: 'Write A Description...'),
              ),
              34.0.verticalSpacer,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Apply For Job')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
