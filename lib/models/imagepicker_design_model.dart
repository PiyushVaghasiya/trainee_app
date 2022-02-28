class User {
  String? Fname;
  String? Lname;
  String? Email;
  String? Mobile;
  String? Images;

  User(this.Fname, this.Lname, this.Email, this.Mobile, this.Images);

  User.fromJson(Map<String, dynamic> json)
      : Fname = json['Fname'],
        Lname = json['Lname'],
        Email = json['Email'],
        Mobile = json['Mobile'],
        Images = json['Images'];

  Map<String, dynamic> toJson() => {
        'Fname': Fname,
        'Lname': Lname,
        'Email': Email,
        'Mobile': Mobile,
        'Images': Images,
      };
}
