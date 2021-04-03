class LoginModel {
  String message;
  Data data;

  LoginModel({this.message, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  User user;
  String token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int id;
  String name;
  String email;
  Null emailVerifiedAt;
  String createdAt;
  String updatedAt;
  Null isAdmin;
  Null country;
  Null education;
  int status;
  Null deletedAt;
  String title;
  String description;
  String img;
  Null googleId;
  String avatar;
  Null countryCode;
  Null phone;

  User(
      {this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
        this.isAdmin,
        this.country,
        this.education,
        this.status,
        this.deletedAt,
        this.title,
        this.description,
        this.img,
        this.googleId,
        this.avatar,
        this.countryCode,
        this.phone});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isAdmin = json['is_admin'];
    country = json['country'];
    education = json['education'];
    status = json['status'];
    deletedAt = json['deleted_at'];
    title = json['title'];
    description = json['description'];
    img = json['img'];
    googleId = json['google_id'];
    avatar = json['avatar'];
    countryCode = json['country_code'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['is_admin'] = this.isAdmin;
    data['country'] = this.country;
    data['education'] = this.education;
    data['status'] = this.status;
    data['deleted_at'] = this.deletedAt;
    data['title'] = this.title;
    data['description'] = this.description;
    data['img'] = this.img;
    data['google_id'] = this.googleId;
    data['avatar'] = this.avatar;
    data['country_code'] = this.countryCode;
    data['phone'] = this.phone;
    return data;
  }
}