import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 68.v),
                child: Stack(alignment: Alignment.bottomRight, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Text("SPARK",
                          style: CustomTextStyles.sourceSansProPrimary)),
                  CustomImageView(
                      imagePath: ImageConstant.imgCasualLife3d,
                      height: 573.v,
                      width: 368.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 5.v),
                      onTap: () {
                        onTapImgCasualLifed(context);
                      }),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 168.v),
                          child: Text("SPARK",
                              style: CustomTextStyles.sourceSansProPrimary))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          height: 74.v,
                          width: 352.h,
                          margin: EdgeInsets.only(left: 13.h, bottom: 260.v),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(24.h))))
                ]))));
  }

  /// Navigates to the loginSignupScreen when the action is triggered.
  onTapImgCasualLifed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginSignupScreen);
  }
}
