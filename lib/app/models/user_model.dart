class UserResponse {
  int statusCode;
  String message;
  String token;
  User user;

  UserResponse({this.statusCode, this.message, this.token, this.user});

  UserResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    message = json['message'];
    token = json['token'];
    user = json['data'] != null ? new User.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.user != null) {
      data['data'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  String image;
  String role;
  bool status;
  String sId;
  String firstname;
  String lastname;
  String email;
  String password;
  String address;
  String townId;
  String stateId;
  List<Coordinate> coordinate;
  String phone;
  List<ResetPassword> resetPassword;
  String createdAt;
  String updatedAt;
  int iV;
  String deviceId;

  User(
      {this.image,
        this.role,
        this.status,
        this.sId,
        this.firstname,
        this.lastname,
        this.email,
        this.password,
        this.address,
        this.townId,
        this.stateId,
        this.coordinate,
        this.phone,
        this.resetPassword,
        this.createdAt,
        this.updatedAt,
        this.iV,
        this.deviceId});

  User.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    role = json['role'];
    status = json['status'];
    sId = json['_id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    password = json['password'];
    address = json['address'];
    townId = json['town_id'];
    stateId = json['state_id'];
    if (json['coordinate'] != null) {
      coordinate = new List<Coordinate>();
      json['coordinate'].forEach((v) {
        coordinate.add(new Coordinate.fromJson(v));
      });
    }
    phone = json['phone'];
    if (json['resetPassword'] != null) {
      resetPassword = new List<ResetPassword>();
      json['resetPassword'].forEach((v) {
        resetPassword.add(new ResetPassword.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    deviceId = json['device_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['role'] = this.role;
    data['status'] = this.status;
    data['_id'] = this.sId;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['password'] = this.password;
    data['address'] = this.address;
    data['town_id'] = this.townId;
    data['state_id'] = this.stateId;
    if (this.coordinate != null) {
      data['coordinate'] = this.coordinate.map((v) => v.toJson()).toList();
    }
    data['phone'] = this.phone;
    if (this.resetPassword != null) {
      data['resetPassword'] =
          this.resetPassword.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['device_id'] = this.deviceId;
    return data;
  }
}

class Coordinate {
  String sId;
  String latitude;
  String longitude;

  Coordinate({this.sId, this.latitude, this.longitude});

  Coordinate.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class ResetPassword {
  String sId;
  Null token;
  Null expire;

  ResetPassword({this.sId, this.token, this.expire});

  ResetPassword.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    token = json['token'];
    expire = json['expire'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['token'] = this.token;
    data['expire'] = this.expire;
    return data;
  }
}
