class Post {
  int? id;
  String? Images;
  String? Name;
  String? pImage;
  int? likes;
  int? Comments;
  bool? islike;

  Post(
      {this.id,
      this.Images,
      this.Name,
      this.pImage,
      this.likes,
      this.Comments,
      this.islike = false});

  Map<String, dynamic> toMap() => {
        "id": id,
        "Images": Images,
        "Name": Name,
        "pImage": pImage,
        "likes": likes,
        "Comments": Comments,
      };

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        Images: json["Image"],
        Name: json["Name"],
        pImage: json["Pimage"],
        likes: json["Likes"],
        Comments: json["Comments"],
      );
}
