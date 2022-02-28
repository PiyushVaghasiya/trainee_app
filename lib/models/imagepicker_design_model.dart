class User {
  String? Fname;
  String? Lname;
  String? Email;
  String? Mobile;

  User(this.Fname, this.Lname, this.Email, this.Mobile);

  User.fromJson(Map<String, dynamic> json)
      : Fname = json['Fname'],
        Lname = json['Lname'],
        Email = json['Email'],
        Mobile = json['Mobile'];

  Map<String, dynamic> toJson() => {
        'Fname': Fname,
        'Lname': Lname,
        'Email': Email,
        'Mobile': Mobile,
      };
}
