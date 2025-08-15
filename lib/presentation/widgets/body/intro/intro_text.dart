import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import 'intro_actions.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.width < DeviceType.mobile.getMaxWidth()
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        // Text(
        //   AppStrings.helloMsg,
        //   style: context.width < DeviceType.ipad.getMaxWidth()
        //       ? AppStyles.s16
        //       : AppStyles.t32.copyWith(color: AppColors.white),
        //   textAlign: _getTextAlign(context.width),
        //   softWrap: true,
        // ),
        // const SizedBox(height: 6),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStrings.firstName + " " + AppStrings.lastName,
              style: context.width < DeviceType.ipad.getMaxWidth()
                  ? AppStyles.s24
                  : AppStyles.t52,
              textAlign: _getTextAlign(context.width),
              softWrap: true,
            ),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xFFFF69B4), Color(0xFF8A2BE2)],
                // Pink → Purple
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Text(
                " ${AppStrings.firstIntro}", // space before last name
                style: context.width < DeviceType.ipad.getMaxWidth()
                    ? AppStyles.s24.copyWith(color: Colors.white)
                    : AppStyles.t52.copyWith(color: Colors.white),
                textAlign: _getTextAlign(context.width),
                softWrap: true,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: context.width < DeviceType.mobile.getMaxWidth()
              ? context.width - 20
              : context.width / 2.5,
          child: Text(
            AppStrings.introMsg,
            style: context.width < DeviceType.ipad.getMaxWidth()
                ? AppStyles.s14
                : AppStyles.s18,
            textAlign: _getTextAlign(context.width),
            softWrap: true,
          ),
        ),
        const SizedBox(height: 30),
        const IntoActions(),
      ],
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth()
        ? TextAlign.center
        : TextAlign.start;
  }
}
