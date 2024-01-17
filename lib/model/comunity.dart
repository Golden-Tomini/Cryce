class Comunity {
  final String imageUrl;
  final String title;
  final String description;
  final double distance;
  final int memberCount;

  Comunity({required this.imageUrl, required this.title, required this.description, required this.distance,  this.memberCount = 0});
}