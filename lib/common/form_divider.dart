import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            endIndent: 5,
            thickness: 1,
            color: Colors.grey.shade300,
          ),
        ),
        const Text(
          'Or',
          style: TextStyle(fontSize: 16),
        ),
        Expanded(
          child: Divider(
            indent: 5,
            thickness: 1,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
