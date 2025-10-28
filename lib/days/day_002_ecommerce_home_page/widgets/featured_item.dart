import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width - 32;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 150,
          child: Stack(
            children: [
              Image.asset(
                Assets.imagesFeaturedItem,
              ),
              Container(
                width: itemWidth * .5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(
                      Assets.imagesFeaturedItemBackground,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    10.verticalSpace,
                    Text(
                      S.of(context).Eidoffer,
                      style: AppTextStyles.regular13.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    5.verticalSpace,
                    Text(
                      S.of(context).Discount25,
                      style: AppTextStyles.bold19.copyWith(color: Colors.white),
                    ),
                    Spacer(),
                    FeaturedItemButton(
                      onPressed: () {},
                    ),
                    18.verticalSpace,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
