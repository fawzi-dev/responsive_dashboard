import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../models/user_model.dart';
import '../../utils/app_images.dart';
import '../../utils/app_styles.dart';
import '../user_info_list_tile.dart';

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
          behavior: const ScrollBehavior(),
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
        // SizedBox(
        //   height: 80,
        //   child: ScrollConfiguration(
        //     behavior: const ScrollBehavior(),
        //     child: ListView.builder(
        //       scrollDirection: Axis.horizontal,
        //       itemCount: items.length, // Number of items in the ListView
        //       itemBuilder: (context, index) {
        //         return Padding(
        //           padding: const EdgeInsets.only(right: 12),
        //           child: IntrinsicWidth(
        //             child: UserInfoListTile(
        //               userInfoModel: items[index],
        //             ),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // )
      ],
    );
  }
}
