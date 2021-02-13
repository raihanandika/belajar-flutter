class UserModel {
  int oid;
  String oemail, ofirstName, olastName, oavatar;
  UserModel(
      this.oid, this.oemail, this.ofirstName, this.olastName, this.oavatar);
}

// import 'dart:convert';

// UserModel userFromJson(String str) => UserModel.fromJson(json.decode(str));

// String userToJson(UserModel data) => json.encode(data.toJson());

// class UserModel {
//   UserModel({
//     this.id,
//     this.email,
//     this.firstName,
//     this.lastName,
//     this.avatar,
//   });

//   int id;
//   String email;
//   String firstName;
//   String lastName;
//   String avatar;

//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//         id: json["id"],
//         email: json["email"],
//         firstName: json["first_name"],
//         lastName: json["last_name"],
//         avatar: json["avatar"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "email": email,
//         "first_name": firstName,
//         "last_name": lastName,
//         "avatar": avatar,
//       };
// }
