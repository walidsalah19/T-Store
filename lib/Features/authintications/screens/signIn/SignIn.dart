import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/Features/authintications/screens/VerifyEmail/VerifyEmail.dart';
import 'package:t_store/Features/authintications/screens/signIn/widget/SignInDivider.dart';
import 'package:t_store/Features/authintications/screens/signIn/widget/SignInSocial.dart';
import 'package:t_store/Features/authintications/screens/signIn/widget/SignInWidget.dart';
import 'package:t_store/Features/authintications/screens/signIn/widget/privacyWidget.dart';

import '../../../../utils/Helper/HelperFunction.dart';
import '../../../../utils/constants/AppTexts.dart';
import '../../../../utils/constants/Sizes.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<StatefulWidget> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    bool dart = HelperFunction.isDark(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SignInMainWidget(dark: dart),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading:   IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: ()=>Get.back()
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
      const SignInWidget(),
      privacyWidget(dark: dark),
      const SizedBox(
        height: AppSizes.md,
      ),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: ()=>Get.to(()=> const VerifyEmail()),
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
      const SignInSocial()
    ]);
  }
}
