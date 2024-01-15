

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/AppTexts.dart';
import '../../../../../utils/constants/Sizes.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: AppText.signInFirstName),
              ),
            ),
            const SizedBox(
              width: AppSizes.md,
            ),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: AppText.signInLastName),
              ),
            )
          ],
        ),
        const SizedBox(
          height: AppSizes.md,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_2),
              labelText: AppText.signInFirstName),
        ),
        const SizedBox(
          height: AppSizes.md,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email), labelText: AppText.email),
        ),
        const SizedBox(
          height: AppSizes.md,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password), labelText: AppText.password),
        ),
        const SizedBox(
          height: AppSizes.md,
        ),
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone), labelText: AppText.phoneNumber),
        ),
      ],
    );
  }
}
