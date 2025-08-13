import 'package:flutter/material.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(KSizes.defaultSpace),
      child: Column(
        children: [
          Image.asset(
                image,
                width: KHelperFunctions.screenWidth() * 0.8,
                height: KHelperFunctions.screenHeight() * 0.6,
              )
              .animate()
              .fadeIn(duration: 600.ms)
              .slideY(begin: 0.2, end: 0, duration: 600.ms),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: KSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
