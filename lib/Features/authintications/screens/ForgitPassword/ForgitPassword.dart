

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/constants/Sizes.dart';
import 'Widgets/ForgitPasswordHead.dart';

class ForgitPassword extends StatelessWidget
{
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
          child: ForgitPasswordWidget(),
        ),
      ),
    );
  }

}

class ForgitPasswordWidget extends StatelessWidget {
  const ForgitPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ForgitPasswordHead(),
        const SizedBox(
          height: AppSizes.lg,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Done"),
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