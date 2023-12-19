import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';
import 'package:sparks/widgets/app_bar/appbar_title.dart';
import 'package:sparks/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:sparks/widgets/app_bar/custom_app_bar.dart';

class DiscussionForumScreen extends StatelessWidget {
  const DiscussionForumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 20.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildDiscussionForum(context),
                              SizedBox(height: 32.v),
                              _buildUserProfile(context),
                              SizedBox(height: 17.v),
                              _buildRecentOrders(context),
                              SizedBox(height: 7.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgCreativeTeamBro,
                                  height: 367.adaptSize,
                                  width: 367.adaptSize)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 75.v,
        title: AppbarTitle(
            text: "discussion", margin: EdgeInsets.only(left: 31.h)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgGroup3,
              margin: EdgeInsets.only(bottom: 14.v),
              onTap: () {
                onTapIconButton(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildDiscussionForum(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
          height: 216.v,
          width: 348.h,
          child: Stack(alignment: Alignment.topLeft, children: [
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    height: 187.v,
                    width: 323.h,
                    decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.13),
                        borderRadius: BorderRadius.circular(20.h)))),
            CustomImageView(
                imagePath: ImageConstant.imgNounBulb4920131,
                height: 58.v,
                width: 44.h,
                alignment: Alignment.topLeft)
          ])),
      SizedBox(height: 17.v),
      Align(
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.only(left: 25.h, right: 19.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    height: 39.v,
                    width: 293.h,
                    decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withOpacity(0.13),
                        borderRadius: BorderRadius.circular(19.h))),
                CustomImageView(
                    imagePath: ImageConstant.imgNounSend4792901,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 5.h, top: 7.v, bottom: 8.v))
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 23.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUserAvatarIco,
              height: 45.v,
              width: 32.h,
              margin: EdgeInsets.only(bottom: 68.v)),
          Container(
              height: 113.v,
              width: 295.h,
              margin: EdgeInsets.only(left: 12.h),
              decoration: BoxDecoration(
                  color: appTheme.indigo200.withOpacity(0.13),
                  borderRadius: BorderRadius.circular(20.h)))
        ]));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 23.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUserAvatarIco45x29,
              height: 45.v,
              width: 29.h,
              margin: EdgeInsets.only(bottom: 68.v)),
          Container(
              height: 113.v,
              width: 295.h,
              margin: EdgeInsets.only(left: 14.h),
              decoration: BoxDecoration(
                  color: appTheme.indigo200.withOpacity(0.13),
                  borderRadius: BorderRadius.circular(20.h)))
        ]));
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
