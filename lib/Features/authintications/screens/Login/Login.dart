import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';
import 'package:t_store/common/Styles/AppSpacing.dart';
import 'package:t_store/utils/constants/AppColors.dart';
import 'package:t_store/utils/constants/AppTexts.dart';
import 'package:t_store/utils/constants/Imeges.dart';
import 'package:t_store/utils/constants/Sizes.dart';

import '../../../../utils/Helper/HelperFunction.dart';

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
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(height: 120, image: AssetImage(Images.appLogo)),
                  Text(AppText.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: AppSizes.sm,
                  ),
                  Text(AppText.loginTitle2,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(
                height: AppSizes.md,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: AppText.email),
                  ),
                  const SizedBox(
                    height: AppSizes.sm,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        labelText: AppText.password,
                        suffixIcon: Icon(Icons.remove_red_eye_sharp)),
                  ),
                  const SizedBox(
                    height: AppSizes.sm,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          const Text(AppText.rememberMy),
                        ],
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(AppText.forgetPassword))
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(AppText.login),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.sm,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(AppText.signIn),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.sm,
                  ),
                ],
              )),
              const SizedBox(
                height: AppSizes.sm,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Divider(color: dark ? AppColorsC.light:AppColorsC.gray,thickness: .5,indent: 60,endIndent: 5,)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
