import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';

// ignore: must_be_immutable
class ArticlecardlistItemWidget extends StatelessWidget {
  const ArticlecardlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlineBluegray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 87.v,
                width: 138.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle46087x138,
                      height: 87.v,
                      width: 138.h,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBookmarkWhiteA700,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        right: 7.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Container(
                width: 49.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder3,
                ),
                child: Text(
                  "Covid-19",
                  style: theme.textTheme.labelSmall,
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: 106.h,
                child: Text(
                  "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeGray900.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jun 12, 2021",
                    style: CustomTextStyles.labelSmallGray500_1,
                  ),
                  Container(
                    height: 2.adaptSize,
                    width: 2.adaptSize,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.gray500,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "6 min read",
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
