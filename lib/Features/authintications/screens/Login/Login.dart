import 'package:flutter/material.dart';
import 'package:t_store/common/Styles/AppSpacing.dart';
import 'package:t_store/utils/constants/AppTexts.dart';
import 'package:t_store/utils/constants/Imeges.dart';
import 'package:t_store/utils/constants/Sizes.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.PaddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(height: 120, image: AssetImage(Images.appLogo)),
                  Text(AppText.loginTitle,style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: AppSizes.sm,),
                  Text(AppText.loginTitle2,style: Theme.of(context).textTheme.bodyMedium),

                ],
              ),
              Form(child: Column(
                children: [
                  TextFormField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_circle_right),
                  ),

                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
