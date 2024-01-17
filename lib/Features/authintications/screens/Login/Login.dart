import 'package:flutter/material.dart';
import 'package:t_store/common/Styles/AppSpacing.dart';
import 'package:t_store/utils/constants/Sizes.dart';

import '../../../../utils/Helper/HelperFunction.dart';
import 'Widgets/LoginDividor.dart';
import 'Widgets/LoginForm.dart';
import 'Widgets/LoginSocialButtons.dart';
import 'Widgets/loginHeader.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    bool dark = HelperFunction.isDark(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.PaddingWithAppBarHeight,
          child: loginMainWidget(dark: dark),
        ),
      ),
    );
  }
}

class loginMainWidget extends StatelessWidget {
  const loginMainWidget({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const loginHeader(),
        const SizedBox(
          height: AppSizes.md,
        ),
        const LoginForm(),
        const SizedBox(
          height: AppSizes.lg,
        ),
        LoginDividor(dark: dark),
        const SizedBox(
          height: AppSizes.lg,
        ),
        const LoginSocialButtons()
      ],
    );
  }
}