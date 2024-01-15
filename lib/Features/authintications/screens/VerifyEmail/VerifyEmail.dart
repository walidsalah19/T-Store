import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/Helper/HelperFunction.dart';
import 'package:t_store/utils/constants/AppTexts.dart';
import 'package:t_store/utils/constants/Imeges.dart';
import 'package:t_store/utils/constants/Sizes.dart';

class VerifyEmail extends StatelessWidget {
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
      body: SingleChildScrollView(
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
        Image(
            height: HelperFunction.screenHeight() * .2,
            width: HelperFunction.screenWidth(),
            image: const AssetImage(Images.verifyEmail)),
        Text(
          AppText.verifyEmail,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: AppSizes.md,
        ),
        Text(
          AppText.supportEmail,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: AppSizes.md,
        ),
        Text(
          AppText.congratulation,
          style: Theme.of(context).textTheme.bodySmall,
        ),
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
