import 'package:bosscubes2/utils/constants/sizes.dart';
import 'package:bosscubes2/widgets/profile/profile_menu.dart';
import 'package:bosscubes2/widgets/profile/section_heading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //profile pictures
              Container(
                margin: EdgeInsets.only(top: 0, right: 10, left: 10),
                child: Column(
                  children: [
                    Image(
                      height: 150,
                      width: 150,
                      image: AssetImage('assets/logos/pp2.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: 'Ad', value: 'Seddar', onPressed: () {}),
              TProfileMenu(title: 'Soyad', value: 'Aydın', onPressed: () {}),

              SizedBox(height: TSizes.spaceBtwItems),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),

              TSectionHeading(
                title: 'Personel Information',
                showActionButton: false,
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                  title: 'Şirket Kodu', value: '123532', onPressed: () {}),
              TProfileMenu(
                  title: 'E-Mail',
                  value: 'seddaraydin@gmail.com',
                  onPressed: () {}),
              TProfileMenu(
                  title: 'Telefon', value: '+90-5356815466', onPressed: () {}),
              TProfileMenu(title: 'Cinsiyet', value: 'Erkek', onPressed: () {}),
              TProfileMenu(
                  title: 'Doğum Tarihi',
                  value: '8 Ağustos 2001',
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
