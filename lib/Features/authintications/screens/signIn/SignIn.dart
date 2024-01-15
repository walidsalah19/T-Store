import 'package:flutter/material.dart';
import 'package:t_store/Features/authintications/screens/Login/Login.dart';
import 'package:t_store/Features/authintications/screens/signIn/widget/SignInDivider.dart';
import 'package:t_store/Features/authintications/screens/signIn/widget/SignInSocial.dart';
import 'package:t_store/Features/authintications/screens/signIn/widget/SignInWidget.dart';
import 'package:t_store/Features/authintications/screens/signIn/widget/privacyWidget.dart';

import '../../../../utils/Helper/HelperFunction.dart';
import '../../../../utils/constants/AppTexts.dart';
import '../../../../utils/constants/Sizes.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    bool dart = HelperFunction.isDark(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Add functionality to navigate back or perform any action
            HelperFunction.navigateToScreen(context, Login());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SignInMainWidget(dark: dart),
        ),
      ),
    );
  }
}

class SignInMainWidget extends StatelessWidget {
  final bool dark;

  const SignInMainWidget({super.key, required this.dark});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(AppText.signInTitle,
          style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(
        height: AppSizes.md,
      ),
      SignInWidget(),
      privacyWidget(dark: dark),
      const SizedBox(
        height: AppSizes.md,
      ),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(AppText.signIn),
        ),
      ),
      const SizedBox(
        height: AppSizes.md,
      ),
      SignInDivider(dark: dark),
      const SizedBox(
        height: AppSizes.md,
      ),
      SignInSocial()
    ]);
  }
}
