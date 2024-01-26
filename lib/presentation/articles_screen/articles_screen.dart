import '../articles_screen/widgets/articlecardlist_item_widget.dart';
import '../articles_screen/widgets/articlelist_item_widget.dart';
import '../articles_screen/widgets/ninetythree_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:prescribo/core/app_export.dart';
import 'package:prescribo/widgets/app_bar/appbar_leading_image.dart';
import 'package:prescribo/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:prescribo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:prescribo/widgets/app_bar/custom_app_bar.dart';
import 'package:prescribo/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class ArticlesScreen extends StatelessWidget {
  ArticlesScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: CustomSearchView(
                          controller: searchController,
                          hintText: "Search articles, news...",
                        ),
                      ),
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Popular Articles",
                            style: CustomTextStyles.titleMediumGray900_1,
                          ),
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildNinetyThree(context),
                      SizedBox(height: 20.v),
                      _buildTrendingArticlesRow(context),
                      SizedBox(height: 13.v),
                      _buildArticleCardList(context),
                      SizedBox(height: 18.v),
                      _buildRelatedArticlesRow(context),
                      SizedBox(height: 15.v),
                      _buildArticleList(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleSix(
        text: "Arcticles",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgComponent1,
          margin: EdgeInsets.fromLTRB(24.h, 21.v, 24.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNinetyThree(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 50.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 20.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return NinetythreeItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingArticlesRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Trending Articles",
            style: CustomTextStyles.titleMediumGray900_1,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "See all",
              style: CustomTextStyles.bodySmallInterTeal40001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArticleCardList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 219.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 20.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return ArticlecardlistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRelatedArticlesRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Related Articles",
            style: CustomTextStyles.titleMediumBlack900_1,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "See all",
              style: CustomTextStyles.bodySmallInterTeal40001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildArticleList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ArticlelistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup19,
        height: 24.v,
        width: 316.h,
        margin: EdgeInsets.fromLTRB(30.h, 28.v, 29.h, 27.v),
      ),
    );
  }
}
