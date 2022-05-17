
class HealthyModelMember {
/*
{
  "member_id": 1,
  "first_name": "James",
  "last_name": "Zamunda",
  "member_number": "AA1",
  "gender": "male",
  "phone_number": "254700123456",
  "email": "jameszamunda@test.com"
}
*/

  int? memberId;
  String? firstName;
  String? lastName;
  String? memberNumber;
  String? gender;
  String? phoneNumber;
  String? email;

  HealthyModelMember({
    required this.memberId,
    required this.firstName,
    required this.lastName,
    required this.memberNumber,
    required this.gender,
    required this.phoneNumber,
    required this.email,
  });
  HealthyModelMember.fromJson(Map<String, dynamic> json) {
    memberId = json['member_id']?.toInt();
    firstName = json['first_name']?.toString();
    lastName = json['last_name']?.toString();
    memberNumber = json['member_number']?.toString();
    gender = json['gender']?.toString();
    phoneNumber = json['phone_number']?.toString();
    email = json['email']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['member_id'] = memberId;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['member_number'] = memberNumber;
    data['gender'] = gender;
    data['phone_number'] = phoneNumber;
    data['email'] = email;
    return data;
  }
}

class HealthyModel {
/*
{
  "group_id": 1,
  "group_name": "Dove",
  "group_avatar": "Dove",
  "member": [
    {
      "member_id": 1,
      "first_name": "James",
      "last_name": "Zamunda",
      "member_number": "AA1",
      "gender": "male",
      "phone_number": "254700123456",
      "email": "jameszamunda@test.com"
    }
  ]
}
*/

  int? groupId;
  String? groupName;
  String? groupAvatar;
  List<HealthyModelMember>? member;

  HealthyModel({
    required this.groupId,
    required this.groupName,
    required this.groupAvatar,
    required this.member,
  });
  HealthyModel.fromJson(Map<String, dynamic> json) {
    groupId = json['group_id']?.toInt();
    groupName = json['group_name']?.toString();
    groupAvatar = json['group_avatar']?.toString();
    if (json['member'] != null) {
      final v = json['member'];
      final arr0 = <HealthyModelMember>[];
      v.forEach((v) {
        arr0.add(HealthyModelMember.fromJson(v));
      });
      member = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['group_id'] = groupId;
    data['group_name'] = groupName;
    data['group_avatar'] = groupAvatar;
    if (member != null) {
      final v = member;
      final arr0 = [];
      v?.forEach((v) {
        arr0.add(v.toJson());
      });
      data['member'] = arr0;
    }
    return data;
  }
}
