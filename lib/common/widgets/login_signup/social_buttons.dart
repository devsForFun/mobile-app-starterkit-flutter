import 'package:flutter/material.dart';
import 'package:flutter_template/utils/constants/colors.dart';
import 'package:flutter_template/utils/constants/image_strings.dart';
import 'package:flutter_template/utils/constants/sizes.dart';
import 'package:get/get.dart';
import '../../../features/authentication/controllers/login/login_controller.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: KColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(KImages.google),
              width: KSizes.iconMd,
              height: KSizes.iconMd,
            ),
            onPressed: () => controller.googleSignIn(),
          ),
        ),
        const SizedBox(width: KSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: KColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(KImages.facebook),
              width: KSizes.iconMd,
              height: KSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
