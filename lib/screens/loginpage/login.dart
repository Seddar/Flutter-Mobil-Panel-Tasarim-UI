import 'package:bosscubes2/navigation_menu.dart';
import 'package:bosscubes2/screens/loginpage/forget_password.dart';
import 'package:bosscubes2/screens/loginpage/signup.dart';
import 'package:bosscubes2/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:bosscubes2/styles/spacing_styles.dart';
import 'package:bosscubes2/utils/constants/image_strings.dart';
import 'package:bosscubes2/utils/helpers/helper_functions.dart';
import 'package:bosscubes2/utils/constants/text_strings.dart';
import 'package:bosscubes2/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo title subtitle
              Container(
                margin: EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      height: 150,
                      image:
                          AssetImage(dark ? TImages.appLogo : TImages.appLogo),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 13),
                      child: Text(
                        TTexts.loginTitle1,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.md,
                    ),
                    Text(
                      TTexts.loginSubTitle1,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 0),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: TSizes.spaceBtwSections),
                    child: Column(
                      children: [
                        //Şirket Kodu
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.building),
                              labelText: TTexts.companyCode),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),

                        //Email
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Iconsax.direct_right),
                              labelText: TTexts.email),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields,
                        ),

                        //password
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),

                        const SizedBox(
                          height: TSizes.spaceBtwInputFields / 2,
                        ),

                        //remember me & forgot password

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //REMEMBER ME
                            Row(
                              children: [
                                Checkbox(value: true, onChanged: (value) {}),
                                const Text(TTexts.rememberMe),
                              ],
                            ),
                            //FORGOT PASSWORD
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => ForgetPassword()),
                                    ),
                                  );
                                },
                                child: Text(TTexts.forgetPassword)),
                          ],
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        //sign in button
                        Container(
                          child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) =>
                                            NavigationMenu()),
                                      ),
                                    );
                                  },
                                  child: const Text(TTexts.signIn))),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwInputFields / 2,
                        ),

                        //create account button
                        SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => SignupScreen()),
                                    ),
                                  );
                                },
                                child: const Text(TTexts.createAccount))),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
