import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';
import 'package:sparks/widgets/custom_icon_button.dart';
import 'package:sparks/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomIconButton(
                                        height: 47.adaptSize,
                                        width: 47.adaptSize,
                                        padding: EdgeInsets.all(9.h),
                                        alignment: Alignment.centerRight,
                                        onTap: () {
                                          onTapBtnIconButton(context);
                                        },
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup3)),
                                    SizedBox(height: 2.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 83.h),
                                        child: Text("my profile",
                                            style:
                                                theme.textTheme.displaySmall)),
                                    SizedBox(height: 17.v),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 32.h, right: 65.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 69.h, vertical: 21.v),
                                        decoration: AppDecoration.fillPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL201),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  height: 193.v,
                                                  width: 120.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 29
                                                                            .v),
                                                                child: Text(
                                                                    "@username",
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyLarge))),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgUserAvatarIco89x67,
                                                            height: 150.v,
                                                            width: 113.h,
                                                            alignment: Alignment
                                                                .topCenter),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Text(
                                                                "FULL NAME",
                                                                style: CustomTextStyles
                                                                    .headlineSmall_1))
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.h),
                                                  child: Text("job title",
                                                      style: CustomTextStyles
                                                          .titleMedium_1))
                                            ])),
                                    SizedBox(height: 19.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 79.h),
                                        child: Row(children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.v),
                                              child: CustomIconButton(
                                                  height: 34.v,
                                                  width: 32.h,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgNounInsta3324997))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgNounGithub4289652,
                                              height: 34.v,
                                              width: 29.h,
                                              margin:
                                                  EdgeInsets.only(left: 26.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgNounEmail6273348,
                                              height: 34.v,
                                              width: 47.h,
                                              margin: EdgeInsets.only(
                                                  left: 29.h, bottom: 2.v))
                                        ])),
                                    SizedBox(height: 23.v),
                                    _buildUserProfile(context),
                                    SizedBox(height: 5.v),
                                    _buildSkills(context),
                                    SizedBox(height: 10.v),
                                    Container(
                                        height: 27.v,
                                        width: 206.h,
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5.h),
                                                bottomRight:
                                                    Radius.circular(5.h)))),
                                    SizedBox(height: 11.v),
                                    _buildProjects(context),
                                    SizedBox(height: 10.v),
                                    Container(
                                        height: 30.v,
                                        width: 323.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onPrimaryContainer,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20.h),
                                                bottomLeft:
                                                    Radius.circular(20.h)))),
                                    SizedBox(height: 10.v),
                                    Container(
                                        height: 30.v,
                                        width: 323.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onPrimaryContainer,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20.h),
                                                bottomLeft:
                                                    Radius.circular(20.h)))),
                                    SizedBox(height: 10.v),
                                    Container(
                                        height: 30.v,
                                        width: 323.h,
                                        margin: EdgeInsets.only(left: 9.h),
                                        decoration: BoxDecoration(
                                            color: theme
                                                .colorScheme.onPrimaryContainer,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(20.h),
                                                bottomLeft:
                                                    Radius.circular(20.h))))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text("about me", style: theme.textTheme.titleMedium)),
      SizedBox(height: 7.v),
      Padding(
          padding: EdgeInsets.only(right: 33.h),
          child: CustomTextFormField(controller: editTextController))
    ]);
  }

  /// Section Widget
  Widget _buildSkills(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text("skills", style: theme.textTheme.titleMedium)),
      SizedBox(height: 3.v),
      Padding(
          padding: EdgeInsets.only(right: 39.h),
          child: Row(children: [
            Container(
                height: 27.v,
                width: 98.h,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.h),
                        bottomRight: Radius.circular(5.h)))),
            Container(
                height: 27.v,
                width: 206.h,
                margin: EdgeInsets.only(left: 13.h),
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.h),
                        bottomRight: Radius.circular(5.h))))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildProjects(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("projects", style: theme.textTheme.titleMedium)),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(right: 23.h),
              child: CustomTextFormField(
                  controller: editTextController1,
                  textInputAction: TextInputAction.done,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillOnPrimaryContainer,
                  fillColor: theme.colorScheme.onPrimaryContainer))
        ]));
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
