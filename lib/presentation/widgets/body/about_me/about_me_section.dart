import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = context.width;
    final isTabletOrLarger = deviceWidth > DeviceType.ipad.getMaxWidth();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ABOUT ME Title
        FittedBox(
          child: Text(
            AppBarHeaders.aboutMe.getString(),
            style: AppStyles.t32,
          ),
        ),
        const SizedBox(height: 40),
        _buildAboutColumn(context),
        const SizedBox(height: 50),
      ],
    );
  }

  Widget _buildAboutColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // About Me Text
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
           AppStrings.aboutMeMsg,
            style: AppStyles.s18,
          ),
        ),
        const SizedBox(height: 20),
        // Apps / Projects Summary
        _buildCard(
          icon: Icons.apps,
          iconColor: Colors.orange,
          title: '5+ Published Apps',
          description:
          'Successfully developed, tested, and launched five live Flutter applications with Firebase integration and responsive designs.',
        ),
        const SizedBox(height: 20),
        // Skills Section
        _buildSkillsSection(),
      ],
    );
  }

  Widget _buildCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 30),
          const SizedBox(width: 12),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: AppStyles.s24.copyWith(color: AppColors.primaryColor)),
                const SizedBox(height: 4),
                Text(description, style: AppStyles.s18, maxLines: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    final skills = [
      'Flutter', 'Dart', 'Firebase', 'REST APIs',
      'State Management', 'UI/UX Design', 'Git', 'Adobe Suite'
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: skills.map((skill) => _buildSkillButton(skill)).toList(),
      ),
    );
  }

  Widget _buildSkillButton(String label) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 140),
      child: CustomButtonExp(
        label: label,
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
      ),
    );
  }
}
