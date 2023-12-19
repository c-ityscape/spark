import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';
import 'package:sparks/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sparks/widgets/app_bar/custom_app_bar.dart';

class ChatroomScreen extends StatelessWidget {
  const ChatroomScreen({Key? key}) : super(key: key);

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
                        padding: EdgeInsets.symmetric(horizontal: 34.h),
                        child: Column(children: [
                          SizedBox(
                              height: 666.v,
                              width: 322.h,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 2.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.h,
                                                vertical: 91.v),
                                            decoration: AppDecoration
                                                .outlineBlack
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 43.h),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUserAvatarIco,
                                                                height: 45.v,
                                                                width: 32.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            24.v)),
                                                            Container(
                                                                height: 67.v,
                                                                width: 210.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 14
                                                                            .h),
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .indigo200
                                                                        .withOpacity(
                                                                            0.13),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.h)))
                                                          ])),
                                                  SizedBox(height: 35.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 47.h,
                                                                  right: 13.h),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        142.v,
                                                                    width:
                                                                        200.h,
                                                                    decoration: BoxDecoration(
                                                                        color: appTheme
                                                                            .indigo200
                                                                            .withOpacity(
                                                                                0.13),
                                                                        borderRadius:
                                                                            BorderRadius.circular(20.h))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgUserAvatarIco45x29,
                                                                    height:
                                                                        45.v,
                                                                    width: 29.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 10
                                                                            .h,
                                                                        bottom:
                                                                            97.v))
                                                              ]))),
                                                  SizedBox(height: 21.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h,
                                                          right: 53.h),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgUserAvatarIco,
                                                                height: 45.v,
                                                                width: 32.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            83.v)),
                                                            Container(
                                                                height: 126.v,
                                                                width: 191.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 14
                                                                            .h),
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .indigo200
                                                                        .withOpacity(
                                                                            0.13),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.h)))
                                                          ])),
                                                  SizedBox(height: 87.v)
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            width: 322.h,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 27.h,
                                                vertical: 11.v),
                                            decoration: AppDecoration
                                                .outlineBlack900
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL20),
                                            child: Text("#team",
                                                style: theme
                                                    .textTheme.displaySmall)))
                                  ])),
                          SizedBox(height: 9.v),
                          _buildChatroomView(context),
                          SizedBox(height: 66.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgUserAvatarIco89x67,
                              height: 89.v,
                              width: 67.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 27.h))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup3,
          margin: EdgeInsets.fromLTRB(9.h, 12.v, 9.h, 13.v),
          onTap: () {
            onTapNounMenu(context);
          })
    ], styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildChatroomView(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 39.v,
          width: 293.h,
          decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.13),
              borderRadius: BorderRadius.circular(19.h),
              border: Border.all(color: appTheme.black900, width: 1.h))),
      CustomImageView(
          imagePath: ImageConstant.imgNounSend4792901,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 2.h, top: 7.v, bottom: 8.v))
    ]);
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapNounMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
