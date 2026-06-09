import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground2),
          ),
          color: Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(right: 42, left: 31, top: 16),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16.copyWith(
                  color: Color(0xffEAF7FE),
                ),
              ),
              subtitle: Text('Syah Bandi', style: AppStyles.styleMedium20),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16.copyWith(
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: SizedBox(height: 26)),
          ],
        ),
      ),
    );
  }
}
//0918 8124 0042 8129