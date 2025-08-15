import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/widgets/custom_button.dart';
import 'package:universal_html/html.dart' as html;
import '../../../../data/models/project.dart';

class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (project.previewLink != null)
            Expanded(
              child: CustomButton(
                label: 'Preview',
                onPressed: () {
                  html.window.open(project.previewLink!, '_blank');
                },
              ),
            ),
          const SizedBox(width: 10),
          if (project.githubRepoLink != null) ...[
            if (project.previewLink != null) const SizedBox(width: 18),
            CustomButtonIcon(
              label: const Center(
                child: FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              onPressed: () {
                html.window.open(project.githubRepoLink!, '_blank');
              },
            ),
          ],
          const SizedBox(width: 10),
          if (project.googlePlay != null) ...[
            if (project.previewLink != null || project.githubRepoLink != null)
              const SizedBox(width: 18),
            CustomButtonIcon(
              label:  const Center(
                child: FaIcon(
                  FontAwesomeIcons.googlePlay,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              // Image.network(
              //   AppAssets.googlePlayLogo,
              //   height: 24,
              //   fit: BoxFit.contain,
              // ),
              onPressed: () {
                html.window.open(project.googlePlay!, '_blank');
              },
            ),
          ],
          const SizedBox(width: 10),
          if (project.appStore != null) ...[
            if (project.previewLink != null || project.githubRepoLink != null)
              const SizedBox(width: 18),
            CustomButtonIcon(
              label:  const Center(
                child: FaIcon(
                  FontAwesomeIcons.appStore,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              // Image.network(
              //   AppAssets.appStoreLogo,
              //   height: 24,
              //   fit: BoxFit.contain,
              // ),
              onPressed: () {
                html.window.open(project.appStore!, '_blank');
              },
            ),
          ],
          SizedBox(width: 10),
          if (project.previewLink == null &&
              project.githubRepoLink == null &&
              project.appStore == null &&
              project.googlePlay == null)
            Expanded(
              child: CustomButton(
                label: 'No actions available',
                onPressed: () {},
              ),
            )
        ],
      ),
    );
  }
}
