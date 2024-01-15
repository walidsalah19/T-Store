

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/Features/authintications/screens/signIn/SignIn.dart';
import 'package:t_store/utils/constants/Sizes.dart';

import '../../../../utils/Helper/HelperFunction.dart';

class VerifyEmail extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          icon: const Icon(Icons.cancel_rounded),
          onPressed: () {
            // Add functionality to navigate back or perform any action
            HelperFunction.navigateToScreen(context, SignIn());
          },
        ), ),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all( AppSizes.defaultSpace),
          child:Column(
            children: [

            ],
          ) ,
        ),
      ),
    );

  }

}