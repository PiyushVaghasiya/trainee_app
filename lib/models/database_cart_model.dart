class DatabaseCartModel {
  String? Images;
  String? Title;
  String? Description;
  int? Counter;

  DatabaseCartModel({this.Images, this.Title, this.Description, this.Counter});

  Map<String, dynamic> toMap() => {
        "Image": Images,
        "Title": Title,
        "Description": Description,
        "Counter": Counter,
      };

  factory DatabaseCartModel.fromMap(Map<String, dynamic> json) =>
      DatabaseCartModel(
        Images: json["Images"],
        Title: json["Title"],
        Description: json["Description"],
        Counter: json["Counter"],
      );
}
