import 'package:flutter/material.dart';
import 'package:job_finder/common/back_arrow.dart';
import 'package:job_finder/common/custom_appbar.dart';
import 'package:job_finder/common/primary_header.dart';
import 'package:job_finder/common/social_button.dart';
import 'package:job_finder/utils/colors.dart';
import 'package:job_finder/utils/extension.dart';
import '../../common/form_divider.dart';
import '../login/login_screen.dart';
import 'widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        leading: BackArrow(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PrimaryHeader(
                title: 'Register Now',
                subTitle: 'Let\'s  create your account.',
              ),
              32.0.verticalSpacer,
              const RegisterForm(),
              32.0.verticalSpacer,
              const FormDivider(),
              32.0.verticalSpacer,
              const SocialButton(),
              32.0.verticalSpacer,
              Center(
                child: Wrap(
                  children: [
                    const Text(
                      'Aready Have An Account?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    6.0.horizontalSpacer,
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: kPrimaryColor),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
