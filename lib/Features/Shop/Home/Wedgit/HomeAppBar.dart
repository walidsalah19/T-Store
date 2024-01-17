

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/AppBarWidget.dart';
import '../../../../utils/constants/AppTexts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(showBackArrow: false,title: Column(
      children: [
        Text(AppText.goodDay,style: Theme.of(context).textTheme.headlineSmall,),
      ],
    ),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag,color: Colors.white,))
      ],);
  }
}
