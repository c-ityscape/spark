import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';
import 'package:sparks/widgets/custom_elevated_button.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: Column(children: [
                  SizedBox(
                      height: 634.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                                width: 229.h,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              "come on let’s engage with bright m",
                                          style: CustomTextStyles
                                              .displaySmall38_1),
                                      TextSpan(
                                          text: "inds!",
                                          style:
                                              CustomTextStyles.displaySmall38_2)
                                    ]),
                                    textAlign: TextAlign.center))),
                        CustomImageView(
                            imagePath: ImageConstant.imgLightBulbIcon,
                            height: 513.v,
                            width: 390.h,
                            alignment: Alignment.topCenter)
                      ])),
                  SizedBox(height: 25.v),
                  CustomElevatedButton(
                      height: 43.v,
                      text: "login",
                      margin: EdgeInsets.only(left: 38.h, right: 25.h),
                      buttonTextStyle: CustomTextStyles.headlineSmallRegular,
                      onPressed: () {
                        onTapLogin(context);
                      }),
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                      height: 43.v,
                      text: "sign up",
                      margin: EdgeInsets.only(left: 38.h, right: 25.h),
                      buttonStyle: CustomButtonStyles.fillIndigo,
                      buttonTextStyle: CustomTextStyles.headlineSmallRegular,
                      onPressed: () {
                        onTapSignUp(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
