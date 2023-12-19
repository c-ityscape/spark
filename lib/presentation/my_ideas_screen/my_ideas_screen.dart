import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';
import 'package:sparks/widgets/app_bar/appbar_title.dart';
import 'package:sparks/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:sparks/widgets/app_bar/custom_app_bar.dart';

class MyIdeasScreen extends StatelessWidget {
  const MyIdeasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 15.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("#1", style: theme.textTheme.headlineSmall),
                              SizedBox(height: 8.v),
                              Container(
                                  height: 187.v,
                                  width: 323.h,
                                  margin: EdgeInsets.only(left: 10.h),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20.h),
                                          bottomLeft: Radius.circular(20.h)))),
                              SizedBox(height: 14.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 5.h, right: 48.h),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 362.v),
                                        child: Text("#2",
                                            style:
                                                theme.textTheme.headlineSmall)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.img3dHyggeIsomet,
                                        height: 392.v,
                                        width: 226.h,
                                        margin: EdgeInsets.only(left: 34.h))
                                  ])),
                              SizedBox(height: 8.v),
                              Container(
                                  height: 187.v,
                                  width: 323.h,
                                  margin: EdgeInsets.only(left: 15.h),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20.h),
                                          bottomLeft: Radius.circular(20.h))))
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 70.v,
        title:
            AppbarTitle(text: "my ideas", margin: EdgeInsets.only(left: 26.h)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgGroup3,
              margin: EdgeInsets.only(bottom: 9.v),
              onTap: () {
                onTapIconButton(context);
              })
        ]);
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
