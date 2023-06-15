class Posts {
  int id;
  String image;
  int comment;

  int like;
  String date;
  String description;
  String category;

  Posts(this.id, this.image, this.like, this.comment, this.date,
      this.description, this.category);
}

List<Posts> posts = [
  Posts(
      1,
      'assets/images/image.jpg',
      6,
      10,
      '24/10/2023',
      'Entrainement du club de la ville de goma pour la preparation du championnat du congo',
      'Sport'),
  Posts(
      2,
      'assets/images/image3.jpg',
      130,
      20,
      '04/01/2023',
      'arrive du club blaca au pays du foot pour leur premiere finale depuis la sortie de Pep Guardiola',
      'Sport')
];
