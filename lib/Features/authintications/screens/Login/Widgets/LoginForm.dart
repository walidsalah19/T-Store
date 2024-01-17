import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/BottomNavigationMenu.dart';
import 'package:t_store/Features/authintications/screens/ForgitPassword/ForgitPassword.dart';
import 'package:t_store/Features/authintications/screens/signIn/SignIn.dart';

import '../../../../../utils/constants/AppTexts.dart';
import '../../../../../utils/constants/Sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
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
                    onPressed: ()=>Get.to(()=>const ForgitPassword()),
                    child: const Text(AppText.forgetPassword))
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=>Get.to(()=>const BottomNavigationMenu()),
                child: const Text(AppText.login),
              ),
            ),
            const SizedBox(
              height: AppSizes.sm,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(()=>const SignIn());
                 // HelperFunction.navigateToScreen(context, SignIn());
                },
                child: const Text(AppText.signIn),
              ),
            ),
            const SizedBox(
              height: AppSizes.sm,
            ),
          ],
        ));
  }
}
