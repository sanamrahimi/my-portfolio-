import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/project.dart';
import 'project_actions.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primaryLight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ProjectImage(imageUrl: project.imageUrl),
          // const SizedBox(height: 16),
          FittedBox(
            child: Text(
              project.name,
              textAlign: TextAlign.center,
              style: AppStyles.s24.copyWith(color: AppColors.primaryColor),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: AutoSizeText(
              project.description,
              textAlign: TextAlign.center,
              style: AppStyles.s18,
              minFontSize: 14,
              maxLines: 4,
            ),
          ),
          ProjectActions(project: project)
        ],
      ),
    );
  }
}
