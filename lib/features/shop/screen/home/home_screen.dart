import 'package:e_commerce/common/widget/container/circular_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: TColors.primary,
              padding: EdgeInsets.all(0),
              child: SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                        top: -150,
                        right: -250,
                        child: CircularContainer(
                          backgroundColor: TColors.white.withOpacity(.1),
                        )
                    ),
                    Positioned(
                        top: 100,
                        right: -300,
                        child: CircularContainer(
                          backgroundColor: TColors.white .withOpacity(.1),
                        )
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
