class LoginPostDataModel {
  LoginPostDataModel({
    this.status,
    this.message,
    this.token,
    this.id,
    this.data,
  });

  LoginPostDataModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
    id = json['id'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? status;
  String? message;
  String? token;
  num? id;
  Data? data;
  LoginPostDataModel copyWith({
    bool? status,
    String? message,
    String? token,
    num? id,
    Data? data,
  }) =>
      LoginPostDataModel(
        status: status ?? this.status,
        message: message ?? this.message,
        token: token ?? this.token,
        id: id ?? this.id,
        data: data ?? this.data,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['token'] = token;
    map['id'] = id;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

class Data {
  Data({
    this.id,
    this.name,
    this.roasterGroupId,
    this.userType,
    this.depotId,
    this.cardNo,
    this.email,
    this.password,
    this.mobile,
    this.type,
    this.joiningDate,
    this.inactiveDate,
    this.bankAccount,
    this.bloodGroup,
    this.dateOfBirth,
    this.presentAddress,
    this.permanentAddress,
    this.emergencyContact,
    this.reference,
    this.gradeId,
    this.designationId,
    this.departmentId,
    this.requisitionId,
    this.candidateId,
    this.companyLocationId,
    this.workplaceId,
    this.workplaceType,
    this.notes,
    this.departmentHead,
    this.approvedBy,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    roasterGroupId = json['roaster_group_id'];
    userType = json['user_type'];
    depotId = json['depot_id'];
    cardNo = json['card_no'];
    email = json['email'];
    password = json['password'];
    mobile = json['mobile'];
    type = json['type'];
    joiningDate = json['joining_date'];
    inactiveDate = json['inactive_date'];
    bankAccount = json['bank_account'];
    bloodGroup = json['blood_group'];
    dateOfBirth = json['date_of_birth'];
    presentAddress = json['present_address'];
    permanentAddress = json['permanent_address'];
    emergencyContact = json['emergency_contact'];
    reference = json['reference'];
    gradeId = json['grade_id'];
    designationId = json['designation_id'];
    departmentId = json['department_id'];
    requisitionId = json['requisition_id'];
    candidateId = json['candidate_id'];
    companyLocationId = json['company_location_id'];
    workplaceId = json['workplace_id'];
    workplaceType = json['workplace_type'];
    notes = json['notes'];
    departmentHead = json['department_head'];
    approvedBy = json['approved_by'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }
  num? id;
  String? name;
  dynamic roasterGroupId;
  String? userType;
  dynamic depotId;
  String? cardNo;
  String? email;
  String? password;
  String? mobile;
  String? type;
  String? joiningDate;
  String? inactiveDate;
  String? bankAccount;
  String? bloodGroup;
  String? dateOfBirth;
  String? presentAddress;
  dynamic permanentAddress;
  String? emergencyContact;
  dynamic reference;
  num? gradeId;
  num? designationId;
  num? departmentId;
  dynamic requisitionId;
  dynamic candidateId;
  num? companyLocationId;
  dynamic workplaceId;
  dynamic workplaceType;
  dynamic notes;
  num? departmentHead;
  num? approvedBy;
  String? status;
  dynamic createdAt;
  String? updatedAt;
  dynamic deletedAt;
  Data copyWith({
    num? id,
    String? name,
    dynamic roasterGroupId,
    String? userType,
    dynamic depotId,
    String? cardNo,
    String? email,
    String? password,
    String? mobile,
    String? type,
    String? joiningDate,
    String? inactiveDate,
    String? bankAccount,
    String? bloodGroup,
    String? dateOfBirth,
    String? presentAddress,
    dynamic permanentAddress,
    String? emergencyContact,
    dynamic reference,
    num? gradeId,
    num? designationId,
    num? departmentId,
    dynamic requisitionId,
    dynamic candidateId,
    num? companyLocationId,
    dynamic workplaceId,
    dynamic workplaceType,
    dynamic notes,
    num? departmentHead,
    num? approvedBy,
    String? status,
    dynamic createdAt,
    String? updatedAt,
    dynamic deletedAt,
  }) =>
      Data(
        id: id ?? this.id,
        name: name ?? this.name,
        roasterGroupId: roasterGroupId ?? this.roasterGroupId,
        userType: userType ?? this.userType,
        depotId: depotId ?? this.depotId,
        cardNo: cardNo ?? this.cardNo,
        email: email ?? this.email,
        password: password ?? this.password,
        mobile: mobile ?? this.mobile,
        type: type ?? this.type,
        joiningDate: joiningDate ?? this.joiningDate,
        inactiveDate: inactiveDate ?? this.inactiveDate,
        bankAccount: bankAccount ?? this.bankAccount,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        presentAddress: presentAddress ?? this.presentAddress,
        permanentAddress: permanentAddress ?? this.permanentAddress,
        emergencyContact: emergencyContact ?? this.emergencyContact,
        reference: reference ?? this.reference,
        gradeId: gradeId ?? this.gradeId,
        designationId: designationId ?? this.designationId,
        departmentId: departmentId ?? this.departmentId,
        requisitionId: requisitionId ?? this.requisitionId,
        candidateId: candidateId ?? this.candidateId,
        companyLocationId: companyLocationId ?? this.companyLocationId,
        workplaceId: workplaceId ?? this.workplaceId,
        workplaceType: workplaceType ?? this.workplaceType,
        notes: notes ?? this.notes,
        departmentHead: departmentHead ?? this.departmentHead,
        approvedBy: approvedBy ?? this.approvedBy,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['roaster_group_id'] = roasterGroupId;
    map['user_type'] = userType;
    map['depot_id'] = depotId;
    map['card_no'] = cardNo;
    map['email'] = email;
    map['password'] = password;
    map['mobile'] = mobile;
    map['type'] = type;
    map['joining_date'] = joiningDate;
    map['inactive_date'] = inactiveDate;
    map['bank_account'] = bankAccount;
    map['blood_group'] = bloodGroup;
    map['date_of_birth'] = dateOfBirth;
    map['present_address'] = presentAddress;
    map['permanent_address'] = permanentAddress;
    map['emergency_contact'] = emergencyContact;
    map['reference'] = reference;
    map['grade_id'] = gradeId;
    map['designation_id'] = designationId;
    map['department_id'] = departmentId;
    map['requisition_id'] = requisitionId;
    map['candidate_id'] = candidateId;
    map['company_location_id'] = companyLocationId;
    map['workplace_id'] = workplaceId;
    map['workplace_type'] = workplaceType;
    map['notes'] = notes;
    map['department_head'] = departmentHead;
    map['approved_by'] = approvedBy;
    map['status'] = status;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    return map;
  }
}
