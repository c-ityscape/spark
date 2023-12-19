import 'package:flutter/material.dart';
import 'package:sparks/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUserAvatarIco,
          height: 45.v,
          width: 32.h,
          margin: EdgeInsets.only(
            top: 8.v,
            bottom: 16.v,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 13.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 8.v),
                Container(
                  width: 191.h,
                  margin: EdgeInsets.only(right: 38.h),
                  child: Text(
                    "sorry, I’m not sure this is within my capability......",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Container(
                  width: 79.h,
                  margin: EdgeInsets.only(left: 71.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillPrimary,
                  child: Text(
                    "rejected",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
