class SignInResponse {
  bool? success;
  Data? data;

  SignInResponse({this.success, this.data});

  SignInResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  String? sId;
  String? firstName;
  String? lastName;
  String? email;
  List<Null>? locationList;
  String? profileImage;
  bool? isVerified;
  String? role;
  List<Null>? refId;
  bool? isActive;
  List<Null>? bloodDonationHistory;
  String? createdAt;
  String? updatedAt;
  int? iV;

  User(
      {this.sId,
      this.firstName,
      this.lastName,
      this.email,
      this.locationList,
      this.profileImage,
      this.isVerified,
      this.role,
      this.refId,
      this.isActive,
      this.bloodDonationHistory,
      this.createdAt,
      this.updatedAt,
      this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    if (json['locationList'] != null) {
      locationList = <Null>[];
      json['locationList'].forEach((v) {
        locationList!.add(new Null.fromJson(v));
      });
    }
    profileImage = json['profileImage'];
    isVerified = json['isVerified'];
    role = json['role'];
    if (json['refId'] != null) {
      refId = <Null>[];
      json['refId'].forEach((v) {
        refId!.add(new Null.fromJson(v));
      });
    }
    isActive = json['isActive'];
    if (json['bloodDonationHistory'] != null) {
      bloodDonationHistory = <Null>[];
      json['bloodDonationHistory'].forEach((v) {
        bloodDonationHistory!.add(new Null.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    if (this.locationList != null) {
      data['locationList'] = this.locationList!.map((v) => v.toJson()).toList();
    }
    data['profileImage'] = this.profileImage;
    data['isVerified'] = this.isVerified;
    data['role'] = this.role;
    if (this.refId != null) {
      data['refId'] = this.refId!.map((v) => v.toJson()).toList();
    }
    data['isActive'] = this.isActive;
    if (this.bloodDonationHistory != null) {
      data['bloodDonationHistory'] =
          this.bloodDonationHistory!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}