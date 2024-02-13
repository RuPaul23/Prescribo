
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prescribo/features/authentication/screens/signupPage/widget/terms&condition_checkbox.dart';
import 'package:prescribo/utils_new/constants/sizes.dart';
import 'package:prescribo/utils_new/constants/text_strings.dart';


class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText:CustomTexts.firstName, 
                  prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: CustomSizes.spaceBtwSections),
              Expanded(
                child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText:CustomTexts.lastName, 
                  prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
    
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
    
          ///Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText:CustomTexts.username, 
              prefixIcon: Icon(Iconsax.user)),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
    
          ///Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText:CustomTexts.email, 
              prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
    
          ///Phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText:CustomTexts.phoneNo, 
              prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
    
          ///Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText:CustomTexts.password, 
              prefixIcon: Icon(Iconsax.password_check), 
              suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: CustomSizes.spaceBtwInputFields),
    
    
          ///Terms and conditions
          const CustomTermsandCondition(),
    
          const SizedBox(height: CustomSizes.spaceBtwSections),
          ///Sign up button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text(CustomTexts.createAccount)))
          
        ],
      ),
    );
  }
}

