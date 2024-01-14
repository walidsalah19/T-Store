import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/Styles/AppSpacing.dart';
import 'package:t_store/utils/constants/AppColors.dart';
import 'package:t_store/utils/constants/AppTexts.dart';
import 'package:t_store/utils/constants/Imeges.dart';
import 'package:t_store/utils/constants/Sizes.dart';

import '../../../../utils/Helper/HelperFunction.dart';
import 'Widgets/LoginDividor.dart';
import 'Widgets/LoginForm.dart';
import 'Widgets/LoginSocialButtons.dart';
import 'Widgets/loginHeader.dart';

class Login extends StatefulWidget {
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
        loginHeader(),
        const SizedBox(
          height: AppSizes.md,
        ),
        LoginForm(),
        const SizedBox(
          height: AppSizes.lg,
        ),
        LoginDividor(dark: dark),
        const SizedBox(
          height: AppSizes.lg,
        ),
        LoginSocialButtons()
      ],
    );
  }
}