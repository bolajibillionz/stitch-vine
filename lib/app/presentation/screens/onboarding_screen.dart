import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stitch_vine/app/presentation/screens/login_screen.dart';
import 'package:stitch_vine/core/constants.dart';
import 'package:stitch_vine/core/reuseables.dart';
import 'package:stitch_vine/core/size_config.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/background.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(392),
                  left: getProportionateScreenWidth(28),
                  right: getProportionateScreenWidth(27),
                  bottom: getProportionateScreenHeight(15),
                ),
                child: BlurryContainer(
                  borderRadius: BorderRadius.zero,
                  color: Palette.containerColor,
                  blur: 10,
                  height: getProportionateScreenHeight(375),
                  width: getProportionateScreenWidth(320),
                  child: PageView(
                    controller: controller,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(52),
                            ),
                            Center(
                              child: createGeneralText(
                                inputText: 'Join the best\ntailoring app',
                                fontSize: 28,
                                family: 'Vice City Sans',
                                weight: FontWeight.w700,
                                colorName: Palette.whiteTextColor,
                                letterSpace: 0.36,
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(30),
                            ),
                            Center(
                              child: createGeneralText(
                                inputText:
                                    'Take your tailoring to the next level\nwith Stitch Vine',
                                fontSize: 15,
                                family: 'Inter',
                                weight: FontWeight.w400,
                                colorName: Palette.whiteTextColor,
                                letterSpace: -0.24,
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(48),
                            ),
                            createButton(
                                context: context,
                                height: 46,
                                width: 230,
                                buttonColor: Palette.primaryColor,
                                nextPage: LogInScreen(),
                                buttonText: 'Get started',
                                buttoTextSize: 15,
                                buttonTextfamily: 'Poppins',
                                buttonTextweight: FontWeight.w600,
                                buttonTextColor: Palette.whiteTextColor,
                                space: 0.06),
                            SizedBox(
                              height: getProportionateScreenHeight(40),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: getProportionateScreenHeight(5),
                                  width: getProportionateScreenWidth(5),
                                  decoration: BoxDecoration(
                                      color: Palette.whiteTextColor,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(10),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: getProportionateScreenWidth(1),
                                      vertical: getProportionateScreenHeight(1)),
                                  height: getProportionateScreenHeight(9),
                                  width: getProportionateScreenWidth(9),
                                  decoration: BoxDecoration(
                                      color: Palette.whiteTextColor,
                                      shape: BoxShape.circle),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: getProportionateScreenWidth(1),
                                        vertical: getProportionateScreenHeight(1)),
                                    height: getProportionateScreenHeight(7),
                                    width: getProportionateScreenWidth(7),
                                    decoration: BoxDecoration(
                                        color: Colors.black, shape: BoxShape.circle),
                                    child: Container(
                                      height: getProportionateScreenHeight(5),
                                      width: getProportionateScreenWidth(5),
                                      decoration: BoxDecoration(
                                          color: Palette.whiteTextColor,
                                          shape: BoxShape.circle),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(10),
                                ),
                                Container(
                                  height: getProportionateScreenHeight(5),
                                  width: getProportionateScreenWidth(5),
                                  decoration: BoxDecoration(
                                      color: Palette.whiteTextColor,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(10),
                                ),
                                Container(
                                  height: getProportionateScreenHeight(5),
                                  width: getProportionateScreenWidth(5),
                                  decoration: BoxDecoration(
                                      color: Palette.whiteTextColor,
                                      shape: BoxShape.circle),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
