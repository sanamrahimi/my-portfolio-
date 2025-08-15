import 'package:flutter/material.dart';

import '../../../../core/utils/app_extensions.dart';
import '../../../../data/models/responsive_size.dart';
import '../../../views/splash/componenets/animated_texts_componenets.dart';

class IntroCircleImageBox extends StatelessWidget {
  const IntroCircleImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = context.width;

    // Define different sizes for different breakpoints
    double imageSize;
    if (deviceWidth >= 1200) {
      // Large desktop
      imageSize = 300;
    } else if (deviceWidth >= 768) {
      // Tablet / medium screen
      imageSize = 250;
    } else {
      // Mobile
      imageSize = deviceWidth * 0.78;
    }

    return SizedBox(
      height: imageSize,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          AnimatedImageContainer(
            width: imageSize,
            height: imageSize,
          ),
          // CircleImageBorder(),
          // IntroImage(),
        ],
      ),
    );
  }
}

// class IntroCircleImageBox extends StatelessWidget {
//   const IntroCircleImageBox({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final responsiveSize = ResponsiveSize(
//       deviceWidth: context.width,
//       mobileSize: context.width * .78,
//       ipadSize: context.width * .40,
//       smallScreenSize: context.width * .37,
//     );
//     return SizedBox(
//       height: responsiveSize.getSize(),
//       child: const Stack(
//         alignment: Alignment.centerRight,
//         children: [
//           AnimatedImageContainer(
//             width: 300,
//             height: 300,
//           ),
//           // CircleImageBorder(),
//           // IntroImage(),
//         ],
//       ),
//     );
//   }
// }
