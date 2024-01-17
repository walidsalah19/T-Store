import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:t_store/common/widgets/AppBarWidget.dart';
import 'package:t_store/utils/constants/AppTexts.dart';
import 'Wedgit/HomePageBackground.dart';

class ShopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePageBackground(
              child: AppBarWidget(showBackArrow: false,title: Column(
                children: [
                  Text(AppText.goodDay,style: Theme.of(context).textTheme.headlineSmall,),
                ],
              ),
              actions: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag,color: Colors.white,))
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
