import 'package:bosscubes2/utils/constants/colors.dart';
import 'package:bosscubes2/utils/constants/sizes.dart';
import 'package:bosscubes2/widgets/custom_shapes/containers/circular_container.dart';
import 'package:bosscubes2/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer2 extends StatelessWidget {
  const TPrimaryHeaderContainer2({
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
          height: 150,
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
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ListTile(
                  leading: Image(
                    image: AssetImage('assets/logos/pp2.png'),
                  ),
                  title: Text('Seddar Aydın',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: TColors.white)),
                  subtitle: Text('seddaraydin@gmail.com',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: TColors.white)),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
