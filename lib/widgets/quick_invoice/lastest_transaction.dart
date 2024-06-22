import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../models/user_model.dart';
import '../../utils/app_images.dart';
import '../../utils/app_styles.dart';
import '../../utils/scroll_behavior.dart';
import '../common/user_info_list_tile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const Gap(12),
        ScrollConfiguration(
          behavior: scrollBehavior,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: items.map((e) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: IntrinsicWidth(
                    child: UserInfoListTile(
                      userInfoModel: e,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
