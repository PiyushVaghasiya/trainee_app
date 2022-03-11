class DataModel {
  int? Id;
  String? Name;
  int? Age;
  int? Standard;

  DataModel({this.Id, this.Name, this.Age, this.Standard});

  factory DataModel.fromMap(Map<String, dynamic> json) => DataModel(
      Id: json['id'],
      Name: json["Name"],
      Age: json["Age"],
      Standard: json["Standard"]);

  Map<String, dynamic> toMap() => {
        "Id": Id,
        "Name": Name,
        "Age": Age,
        "Standard": Standard,
      };
}
