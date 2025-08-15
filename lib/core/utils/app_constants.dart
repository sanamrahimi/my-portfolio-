import '../../data/models/project.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;

  static const List<Project> projects = [
    Project(
        name: 'Treats Unleashed',
        description:
            'A cross-platform Flutter app, now available on both the App Store and Google Play, designed with a focus on clean architecture, responsive UI, and smooth performance. It features real-time data integration via REST APIs, intuitive navigation, and a consistent design system across iOS and Android. The app supports offline access, push notifications, and optimized state management for seamless user interactions. Deployed with CI/CD pipelines, it delivers a reliable and scalable experience for thousands of users',
        googlePlay:
            'https://play.google.com/store/apps/details?id=com.celerant.ios.treatunleashed',
        appStore:
            'https://apps.apple.com/us/app/treats-unleashed/id6456946226'),
    Project(
        name: 'Rebel Rags',
        description:
            "Rebel Rags — Shopping App Developed a cross-platform Flutter app for Rebel Rags, enabling Ole Miss fans to browse, search, and purchase merchandise with ease. Integrated real-time inventory via REST APIs, optimized UI for performance, and released on both iOS and Android.",
        googlePlay:
            'https://play.google.com/store/apps/details?id=com.celerant.ios.rebelrags',
        appStore: 'https://apps.apple.com/us/app/rebel-rags/id6465688780'),
    Project(
        name: 'Basics Work',
        description:
            'BASICS WORK — Self-Defense App (iOS) Built an iOS app for BASICS WORK, enabling users to register for self-defense courses, join workshops, and purchase safety products. Implemented secure payment integration, streamlined booking, and an intuitive UI for easy navigation.',
        appStore: 'https://apps.apple.com/us/app/basics-work/id6478279763'),
    Project(
        name: '2nd & Charles Rewards',
        description:
            "Implemented the complete UI of a feature-rich mobile app, enabling users to shop online, track rewards, view purchase history, receive promotions, manage accounts, and find nearby stores",
        googlePlay:
            " https://play.google.com/store/apps/details?id=com.celerant.ios.secondncharlesrewards.secncharewards",
        appStore:
            'https://apps.apple.com/us/app/2nd-charles-rewards/id6529546979'),
    Project(
      name: 'Shop Trigger',
      description:
          "TRIGGER App – Developed the UI implementation for an e-commerce hunting and shooting gear platform. The app allows users to browse and purchase products, access promotions, view order history, manage account details, and locate the nearest store.",
      appStore: " https://apps.apple.com/us/app/shop-trigger/id6742835081",
    ),
    Project(
      name: 'My Portfolio',
      description:
          "Personal Portfolio Website – Built with Flutter using a clean architecture and BLoC state management, showcasing projects, skills, and experience.",
      githubRepoLink: "https://github.com/sanamrahimi/my-portfolio/tree/master",
    ),
  ];
}
