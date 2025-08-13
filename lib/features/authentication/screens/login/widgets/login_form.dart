import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: KSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: KTexts.email,
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwInputFields),
            TextFormField(
              decoration: InputDecoration(
                labelText: KTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => {},
                  icon: Icon(Iconsax.eye_slash),
                ),
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwInputFields / 2),
            // Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(onChanged: (value) => {}, value: false),
                    const Text(KTexts.rememberMe),
                  ],
                ),
                // Forget Password
                TextButton(
                  onPressed: () => {},
                  child: const Text(KTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: KSizes.spaceBtwSections),
            // SignIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => {},
                child: const Text(KTexts.signIn),
              ),
            ),
            const SizedBox(height: KSizes.spaceBtwItems),
            // Create account Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => {},
                child: const Text(KTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
