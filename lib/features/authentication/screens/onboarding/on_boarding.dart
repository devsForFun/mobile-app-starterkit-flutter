import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../features/authentication/controllers/onboarding/onboarding_controller.dart';
import '../../../../features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import '../../../../features/authentication/screens/onboarding/widgets/onboarding_nextbutton.dart';
import '../../../../features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import '../../../../features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: KImages.onBoardingImage1,
                title: KTexts.onBoardingTitle1,
                subTitle: KTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage2,
                title: KTexts.onBoardingTitle2,
                subTitle: KTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage3,
                title: KTexts.onBoardingTitle3,
                subTitle: KTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //Skip Button
          const OnBoardingSkip(),
          //Dot Navigation SmoothPageIndicator
          const OnBoardingNavigation(),
          //Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
