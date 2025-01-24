import 'package:bosscubes2/drawer.dart';
import 'package:bosscubes2/screens/settings/settings.dart';
import 'package:bosscubes2/utils/constants/colors.dart';
import 'package:bosscubes2/utils/constants/text_strings.dart';
import 'package:bosscubes2/widgets/appbar/appbar.dart';
import 'package:bosscubes2/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerBar(),
      appBar: TAppbar(
        title: Container(
          margin: EdgeInsets.only(left: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.homePageAppbarSubTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .apply(color: TColors.white)),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => settingsPage()),
                  ),
                );
              },
              icon: const Icon(
                Iconsax.setting_2,
                color: TColors.white,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
