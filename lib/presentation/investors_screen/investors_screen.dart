import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';
import 'package:sparks/widgets/custom_elevated_button.dart';
import 'package:sparks/widgets/custom_icon_button.dart';

class InvestorsScreen extends StatelessWidget {
  const InvestorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 14.v),
                  _buildInvestorsClients(context),
                  SizedBox(height: 12.v),
                  _buildEightyEight(context),
                  SizedBox(height: 14.v),
                  _buildSeventy(context),
                  SizedBox(height: 21.v),
                  _buildSixtyOne(context),
                  SizedBox(height: 14.v),
                  _buildSubmitProposal2(context),
                  SizedBox(height: 1.v),
                  _buildEightySeven(context),
                  SizedBox(height: 14.v),
                  _buildSubmitProposal3(context)
                ]))));
  }

  /// Section Widget
  Widget _buildInvestorsClients(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 29.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 155.h,
                      margin: EdgeInsets.only(top: 11.v),
                      child: Text("investors/\nclients",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.displaySmall)),
                  Padding(
                      padding: EdgeInsets.only(left: 156.h, bottom: 55.v),
                      child: CustomIconButton(
                          height: 47.adaptSize,
                          width: 47.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          onTap: () {
                            onTapBtnIconButton(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup3)))
                ])));
  }

  /// Section Widget
  Widget _buildSubmitProposal(BuildContext context) {
    return CustomElevatedButton(text: "submit proposal");
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 21.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIcons8FemaleUser94,
                  height: 94.adaptSize,
                  width: 94.adaptSize,
                  margin: EdgeInsets.only(bottom: 74.v)),
              Container(
                  height: 167.v,
                  width: 241.h,
                  margin: EdgeInsets.only(left: 5.h),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("investor #1",
                            style: theme.textTheme.headlineSmall)),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                              height: 90.v,
                              width: 241.h,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.h),
                                      bottomLeft: Radius.circular(20.h)))),
                          SizedBox(height: 14.v),
                          _buildSubmitProposal(context)
                        ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildSubmitProposal1(BuildContext context) {
    return CustomElevatedButton(text: "submit proposal");
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 25.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 167.v,
                  width: 241.h,
                  margin: EdgeInsets.only(top: 7.v),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("investor #2",
                            style: theme.textTheme.headlineSmall)),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                              height: 90.v,
                              width: 241.h,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.h),
                                      bottomLeft: Radius.circular(20.h)))),
                          SizedBox(height: 14.v),
                          _buildSubmitProposal1(context)
                        ]))
                  ])),
              CustomImageView(
                  imagePath: ImageConstant.imgIcons8FemaleUser9494x94,
                  height: 94.adaptSize,
                  width: 94.adaptSize,
                  margin: EdgeInsets.only(left: 1.h, bottom: 81.v))
            ]));
  }

  /// Section Widget
  Widget _buildSixtyOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 28.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIcons8UserMale94,
                  height: 94.adaptSize,
                  width: 94.adaptSize,
                  margin: EdgeInsets.only(bottom: 25.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("investor #3",
                                style: theme.textTheme.headlineSmall),
                            Container(
                                height: 90.v,
                                width: 241.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.h),
                                        bottomLeft: Radius.circular(20.h))))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildSubmitProposal2(BuildContext context) {
    return CustomElevatedButton(
        width: 239.h,
        text: "submit proposal",
        margin: EdgeInsets.only(right: 28.h),
        alignment: Alignment.centerRight);
  }

  /// Section Widget
  Widget _buildEightySeven(BuildContext context) {
    return SizedBox(
        height: 119.v,
        width: 336.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text("client #1", style: theme.textTheme.headlineSmall)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: 90.v,
                  width: 241.h,
                  margin: EdgeInsets.only(left: 2.h),
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.h),
                          bottomLeft: Radius.circular(20.h))))),
          CustomImageView(
              imagePath: ImageConstant.imgIcons8FemaleUser9494x94,
              height: 94.adaptSize,
              width: 94.adaptSize,
              alignment: Alignment.centerRight)
        ]));
  }

  /// Section Widget
  Widget _buildSubmitProposal3(BuildContext context) {
    return CustomElevatedButton(
        width: 239.h,
        text: "submit proposal",
        margin: EdgeInsets.only(left: 33.h),
        alignment: Alignment.centerLeft);
  }

  /// Navigates to the menuScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuScreen);
  }
}
