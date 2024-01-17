import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/Sizes.dart';

import 'Widgets/VerifyEmailHead.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, actions: [
        IconButton(
          icon: const Icon(Icons.cancel_rounded),
          onPressed: () {
            // Add functionality to navigate back or perform any action
            //HelperFunction.navigateToScreen(context, SignIn());
            Get.back();
          },
        ),
      ]),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: VerfiyEmailMainWidget(),
        ),
      ),
    );
  }
}

class VerfiyEmailMainWidget extends StatelessWidget {
  const VerfiyEmailMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerifyEmailHead(),
        const SizedBox(
          height: AppSizes.lg,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Continue"),
          ),
        ),
        const SizedBox(
          height: AppSizes.lg,
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            child: const Text("Resend Email"),
          ),
        )
      ],
    );
  }
}

