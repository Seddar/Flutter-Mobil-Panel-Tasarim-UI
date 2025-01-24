import 'package:bosscubes2/utils/constants/colors.dart';
import 'package:bosscubes2/widgets/custom_shapes/containers/circular_container.dart';
import 'package:bosscubes2/widgets/custom_shapes/containers/homepage_container1.dart';
import 'package:bosscubes2/widgets/custom_shapes/containers/homepage_container2.dart';
import 'package:bosscubes2/widgets/custom_shapes/containers/homepage_container3.dart';
import 'package:bosscubes2/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 370,
          child: Stack(
            children: [
              ///background  custom shapes
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Column(
                children: [
                  homepageContainer1(),
                  homepageContainer2(),
                  homepageContainer3(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
