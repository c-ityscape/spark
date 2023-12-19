import '../invitations_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';
import 'package:sparks/widgets/app_bar/appbar_trailing_image.dart';
import 'package:sparks/widgets/app_bar/custom_app_bar.dart';
import 'package:sparks/widgets/custom_elevated_button.dart';
import 'package:sparks/widgets/custom_outlined_button.dart';

class InvitationsScreen extends StatelessWidget {
  const InvitationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 34.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.h),
                        child: Column(children: [
                          _buildUserProfileList(context),
                          SizedBox(height: 34.v),
                          CustomOutlinedButton(text: "invitations"),
                          SizedBox(height: 34.v),
                          _buildReceivedInvitations(context),
                          SizedBox(height: 62.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgUserAvatarIco89x67,
                              height: 89.v,
                              width: 67.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 30.h))
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
  Widget _buildUserProfileList(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text("sent", style: theme.textTheme.headlineSmall)),
      SizedBox(height: 6.v),
      Container(
          margin: EdgeInsets.only(left: 3.h),
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 27.v),
          decoration: AppDecoration.fillIndigo
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(height: 23.v),
            Padding(
                padding: EdgeInsets.only(right: 8.h),
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 15.v);
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return UserprofileItemWidget();
                    }))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildReceivedInvitations(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text("received", style: theme.textTheme.headlineSmall)),
      SizedBox(height: 8.v),
      Container(
          margin: EdgeInsets.only(left: 3.h),
          padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 16.v),
          decoration: AppDecoration.fillIndigo
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgUserAvatarIco89x67,
                    height: 48.v,
                    width: 33.h,
                    margin: EdgeInsets.only(top: 8.v, bottom: 153.v)),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 11.h, bottom: 140.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 11.h, vertical: 5.v),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 204.h,
                                  margin: EdgeInsets.only(right: 25.h),
                                  child: Text(
                                      "would love to collaborate with you on this idea.....",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 3.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 16.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CustomElevatedButton(
                                                height: 21.v,
                                                width: 79.h,
                                                text: "accept",
                                                margin: EdgeInsets.only(
                                                    bottom: 2.v),
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimary,
                                                buttonTextStyle: theme
                                                    .textTheme.labelLarge!),
                                            CustomElevatedButton(
                                                height: 21.v,
                                                width: 79.h,
                                                text: "reject",
                                                margin:
                                                    EdgeInsets.only(left: 20.h),
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimary,
                                                buttonTextStyle:
                                                    theme.textTheme.labelLarge!)
                                          ])))
                            ])))
              ]))
    ]);
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapNounMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
