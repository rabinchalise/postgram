import 'package:flutter/material.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
                cursorColor: kDarkerColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text('Name'),
                )),
            16.0.verticalSpacer,
            const TextField(
                cursorColor: kDarkerColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  label: Text('Email'),
                )),
            16.0.verticalSpacer,
            const TextField(
                cursorColor: kDarkerColor,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  label: Text('Password'),
                )),
            16.0.verticalSpacer,
            const TextField(
                cursorColor: kDarkerColor,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  label: Text('Confirm Password'),
                )),
            16.0.verticalSpacer,
            Row(
              children: [
                Checkbox(
                    activeColor: kPrimaryColor,
                    side: const BorderSide(color: Colors.black54, width: 1.5),
                    value: true,
                    onChanged: (value) {}),
                const Expanded(
                  child: Text(
                    'I agree to the terms & Conditions',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                )
              ],
            ),
            20.0.verticalSpacer,
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Register'))),
          ],
        ),
      ),
    );
  }
}
