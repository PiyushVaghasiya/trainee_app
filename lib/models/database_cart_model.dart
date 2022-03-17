class DatabaseCartModel {
  int? Id;
  String? Images;
  String? Title;
  String? Description;
  int? Counter;

  DatabaseCartModel(
      {this.Id, this.Images, this.Title, this.Description, this.Counter});

  Map<String, dynamic> toMap() => {
        "Id": Id,
        "Images": Images,
        "Title": Title,
        "Description": Description,
        "Counter": Counter,
      };

  factory DatabaseCartModel.fromMap(Map<String, dynamic> json) =>
      DatabaseCartModel(
        Id: json["Id"],
        Images: json["Images"],
        Title: json["Title"],
        Description: json["Description"],
        Counter: json["Counter"],
      );
}
