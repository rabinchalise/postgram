import 'package:flutter/material.dart';
import 'package:job_finder/screens/filters/filters_screen.dart';
import 'package:job_finder/utils/extension.dart';
import '../utils/colors.dart';

class SearchFilterSection extends StatelessWidget {
  const SearchFilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextField(
            cursorColor: kDarkerColor,
            decoration: InputDecoration(
                hintText: 'Search for Jobs', prefixIcon: Icon(Icons.search)),
          ),
        ),
        16.0.horizontalSpacer,
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FilterScreen()));
          },
          child: Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14), color: kPrimaryColor),
            child: Image.asset(
              'assets/icons/filter.png',
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
