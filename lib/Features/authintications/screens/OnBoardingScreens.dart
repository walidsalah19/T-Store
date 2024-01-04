import 'package:flutter/material.dart';
import 'package:t_store/utils/Helper/HelperFunction.dart';
import 'package:t_store/utils/constants/AppTexts.dart';
import 'package:t_store/utils/constants/Imeges.dart';
import 'package:t_store/utils/constants/Sizes.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              onBoardingPage(
                  image: Images.onBoardingImage1,
                  title: AppText.onBoardingTitle,
                  subTitle: AppText.onBoardingSubTitle),
              onBoardingPage(
                  image: Images.onBoardingImage2,
                  title: AppText.onBoardingTitle2,
                  subTitle: AppText.onBoardingSubTitle2),
              onBoardingPage(
                  image: Images.onBoardingImage3,
                  title: AppText.onBoardingTitle3,
                  subTitle: AppText.onBoardingSubTitle3),
            ],
          ),
        ],
      ),
    );
  }
}

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: HelperFunction.screenWidth(),
            height: HelperFunction.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSizes.spaceBtItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
