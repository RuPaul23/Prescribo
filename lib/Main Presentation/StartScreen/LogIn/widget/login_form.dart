import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prescribo/core/utils/new_utils/constants/sizes.dart';
import 'package:prescribo/core/utils/new_utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: CustomSizes.spaceBtwSections),
        child: Column(
        children: [
          // Email
          TextFormField(
            decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: CustomTexts.email),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
        
          // Password
          TextFormField(
            decoration: InputDecoration(prefixIcon: Icon(Iconsax.password_check),labelText: CustomTexts.password, suffixIcon: Icon(Iconsax.eye_slash)),
          ),
        
          const SizedBox(height: CustomSizes.spaceBtwInputFields/2),
        
          // Remember Me & Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remeber Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const Text(
                    CustomTexts.rememberMe),
                  ],
                ),
        
              //Forgot Password
                TextButton(onPressed: (){}, child: const Text(CustomTexts.forgetPassword)),
                ],
              ),
        
              const SizedBox(height: CustomSizes.spaceBtwInputFields),
        
              //Sign In Button
              SizedBox(width: double.infinity,height: 50,child: ElevatedButton(onPressed: (){}, child: const Text(CustomTexts.signIn))),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              
        
              // Create Button
              SizedBox(width: double.infinity,height: 50,child: OutlinedButton(onPressed: (){}, child: const Text(CustomTexts.createAccount))),
              const SizedBox(height: CustomSizes.spaceBtwSections),
            ],
          ),
      )
      );
  }
}

