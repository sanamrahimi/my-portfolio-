class Project {
  final String name;
  final String? imageUrl;
  final String description;
  final String? githubRepoLink;
  final String? previewLink;
  final String? googlePlay;
  final String? appStore;

  const Project({
    required this.name,
     this.imageUrl,
    required this.description,
    this.githubRepoLink,
    this.previewLink,
    this.googlePlay,
    this.appStore,
  });
}
