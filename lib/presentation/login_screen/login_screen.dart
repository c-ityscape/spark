import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';
import 'package:sparks/widgets/custom_elevated_button.dart';
import 'package:sparks/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 29.h, top: 144.v, right: 29.h),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("Welcome back!",
                              style: theme.textTheme.headlineLarge))),
                  SizedBox(height: 36.v),
                  _buildWelcomeBackColumn(context),
                  SizedBox(height: 7.v),
                  _buildLoginColumn(context),
                  SizedBox(height: 47.v),
                  CustomElevatedButton(
                      height: 43.v,
                      text: "login",
                      buttonTextStyle: CustomTextStyles.headlineSmallRegular,
                      onPressed: () {
                        onTapLogin(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildWelcomeBackColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("username", style: theme.textTheme.bodyLarge),
      SizedBox(height: 3.v),
      CustomTextFormField(controller: userNameController)
    ]);
  }

  /// Section Widget
  Widget _buildLoginColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("password", style: theme.textTheme.bodyLarge),
      SizedBox(height: 4.v),
      CustomTextFormField(
          controller: passwordController, textInputAction: TextInputAction.done)
    ]);
  }

  /// Navigates to the myIdeasScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myIdeasScreen);
  }
}
