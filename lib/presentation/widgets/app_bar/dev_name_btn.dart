import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';

class DevNameBtn extends StatelessWidget {
  const DevNameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: SizedBox(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ? context.width * .5
              : context.width * .2,
          child: FittedBox(
            alignment: Alignment.topLeft,
            child: Text(
              AppStrings.firstName + ' '+ AppStrings.lastName,
              style: AppStyles.t28,
            ),
          ),
        ),
      ),
    );
  }
}
