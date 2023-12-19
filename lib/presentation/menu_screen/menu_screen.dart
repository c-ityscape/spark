import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 26.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup3,
                          height: 22.v,
                          width: 26.h),
                      SizedBox(height: 17.v),
                      _buildMenuTwentyThree(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildMenuTwentyThree(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 118.h, right: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 38.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          GestureDetector(
              onTap: () {
                onTapTxtProfile(context);
              },
              child: Container(
                  width: 207.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child:
                      Text("🌟 profile", style: theme.textTheme.titleSmall))),
          SizedBox(height: 10.v),
          GestureDetector(
              onTap: () {
                onTapTxtMyideas(context);
              },
              child: Container(
                  width: 207.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child:
                      Text("💡my ideas", style: theme.textTheme.titleSmall))),
          SizedBox(height: 10.v),
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    onTapTxtDiscussionforum(context);
                  },
                  child: Container(
                      width: 191.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.h, vertical: 1.v),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Text("🗣️discussion forum",
                          style: theme.textTheme.titleSmall)))),
          SizedBox(height: 10.v),
          GestureDetector(
              onTap: () {
                onTapTxtExploreideas(context);
              },
              child: Container(
                  width: 207.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("🔍explore ideas",
                      style: theme.textTheme.titleSmall))),
          SizedBox(height: 10.v),
          GestureDetector(
              onTap: () {
                onTapTxtTeamchatroom(context);
              },
              child: Container(
                  width: 207.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("🚀team chatroom",
                      style: theme.textTheme.titleSmall))),
          SizedBox(height: 10.v),
          GestureDetector(
              onTap: () {
                onTapTxtInvestors(context);
              },
              child: Container(
                  width: 207.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 4.v),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child:
                      Text("💰investors", style: theme.textTheme.titleSmall))),
          SizedBox(height: 10.v),
          GestureDetector(
              onTap: () {
                onTapTxtInvitations(context);
              },
              child: Container(
                  width: 207.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 4.v),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("🤝invitations",
                      style: theme.textTheme.titleSmall))),
          SizedBox(height: 31.v)
        ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapTxtProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the myIdeasScreen when the action is triggered.
  onTapTxtMyideas(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myIdeasScreen);
  }

  /// Navigates to the discussionForumScreen when the action is triggered.
  onTapTxtDiscussionforum(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.discussionForumScreen);
  }

  /// Navigates to the myIdeasScreen when the action is triggered.
  onTapTxtExploreideas(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myIdeasScreen);
  }

  /// Navigates to the chatroomScreen when the action is triggered.
  onTapTxtTeamchatroom(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatroomScreen);
  }

  /// Navigates to the investorsScreen when the action is triggered.
  onTapTxtInvestors(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.investorsScreen);
  }

  /// Navigates to the invitationsScreen when the action is triggered.
  onTapTxtInvitations(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.invitationsScreen);
  }
}
