// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseStruct extends BaseStruct {
  ResponseStruct({
    String? id,
    String? refNo,
    String? addressLine1,
    String? addressLine2,
    String? city,
    String? pincode,
    String? zone,
    String? state,
    String? country,
    String? contactperson1,
    String? contact1,
    String? contactperson2,
    String? contact2,
    String? statusId,
    String? statusName,
    String? dateAssigned,
    String? dateVisited,
    String? dateCompleted,
    String? description,
    String? isSurveyFormFilled,
    int? uploadedImagesCount,
    int? uploadedDocumentsCount,
    String? remark,
    String? remarkDate,
    String? clientName,
    String? officeName,
    String? partyName,
    String? isUrgent,
    InspectionFormDataStruct? inspectionFormData,
    String? latitude,
    String? longitude,
  })  : _id = id,
        _refNo = refNo,
        _addressLine1 = addressLine1,
        _addressLine2 = addressLine2,
        _city = city,
        _pincode = pincode,
        _zone = zone,
        _state = state,
        _country = country,
        _contactperson1 = contactperson1,
        _contact1 = contact1,
        _contactperson2 = contactperson2,
        _contact2 = contact2,
        _statusId = statusId,
        _statusName = statusName,
        _dateAssigned = dateAssigned,
        _dateVisited = dateVisited,
        _dateCompleted = dateCompleted,
        _description = description,
        _isSurveyFormFilled = isSurveyFormFilled,
        _uploadedImagesCount = uploadedImagesCount,
        _uploadedDocumentsCount = uploadedDocumentsCount,
        _remark = remark,
        _remarkDate = remarkDate,
        _clientName = clientName,
        _officeName = officeName,
        _partyName = partyName,
        _isUrgent = isUrgent,
        _inspectionFormData = inspectionFormData,
        _latitude = latitude,
        _longitude = longitude;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "refNo" field.
  String? _refNo;
  String get refNo => _refNo ?? '';
  set refNo(String? val) => _refNo = val;

  bool hasRefNo() => _refNo != null;

  // "address_line1" field.
  String? _addressLine1;
  String get addressLine1 => _addressLine1 ?? '';
  set addressLine1(String? val) => _addressLine1 = val;

  bool hasAddressLine1() => _addressLine1 != null;

  // "address_line2" field.
  String? _addressLine2;
  String get addressLine2 => _addressLine2 ?? '';
  set addressLine2(String? val) => _addressLine2 = val;

  bool hasAddressLine2() => _addressLine2 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "pincode" field.
  String? _pincode;
  String get pincode => _pincode ?? '';
  set pincode(String? val) => _pincode = val;

  bool hasPincode() => _pincode != null;

  // "zone" field.
  String? _zone;
  String get zone => _zone ?? '';
  set zone(String? val) => _zone = val;

  bool hasZone() => _zone != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "contactperson1" field.
  String? _contactperson1;
  String get contactperson1 => _contactperson1 ?? '';
  set contactperson1(String? val) => _contactperson1 = val;

  bool hasContactperson1() => _contactperson1 != null;

  // "contact1" field.
  String? _contact1;
  String get contact1 => _contact1 ?? '';
  set contact1(String? val) => _contact1 = val;

  bool hasContact1() => _contact1 != null;

  // "contactperson2" field.
  String? _contactperson2;
  String get contactperson2 => _contactperson2 ?? '';
  set contactperson2(String? val) => _contactperson2 = val;

  bool hasContactperson2() => _contactperson2 != null;

  // "contact2" field.
  String? _contact2;
  String get contact2 => _contact2 ?? '';
  set contact2(String? val) => _contact2 = val;

  bool hasContact2() => _contact2 != null;

  // "statusId" field.
  String? _statusId;
  String get statusId => _statusId ?? '';
  set statusId(String? val) => _statusId = val;

  bool hasStatusId() => _statusId != null;

  // "statusName" field.
  String? _statusName;
  String get statusName => _statusName ?? '';
  set statusName(String? val) => _statusName = val;

  bool hasStatusName() => _statusName != null;

  // "dateAssigned" field.
  String? _dateAssigned;
  String get dateAssigned => _dateAssigned ?? '';
  set dateAssigned(String? val) => _dateAssigned = val;

  bool hasDateAssigned() => _dateAssigned != null;

  // "dateVisited" field.
  String? _dateVisited;
  String get dateVisited => _dateVisited ?? '';
  set dateVisited(String? val) => _dateVisited = val;

  bool hasDateVisited() => _dateVisited != null;

  // "dateCompleted" field.
  String? _dateCompleted;
  String get dateCompleted => _dateCompleted ?? '';
  set dateCompleted(String? val) => _dateCompleted = val;

  bool hasDateCompleted() => _dateCompleted != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "isSurveyFormFilled" field.
  String? _isSurveyFormFilled;
  String get isSurveyFormFilled => _isSurveyFormFilled ?? '';
  set isSurveyFormFilled(String? val) => _isSurveyFormFilled = val;

  bool hasIsSurveyFormFilled() => _isSurveyFormFilled != null;

  // "uploadedImagesCount" field.
  int? _uploadedImagesCount;
  int get uploadedImagesCount => _uploadedImagesCount ?? 0;
  set uploadedImagesCount(int? val) => _uploadedImagesCount = val;

  void incrementUploadedImagesCount(int amount) =>
      uploadedImagesCount = uploadedImagesCount + amount;

  bool hasUploadedImagesCount() => _uploadedImagesCount != null;

  // "uploadedDocumentsCount" field.
  int? _uploadedDocumentsCount;
  int get uploadedDocumentsCount => _uploadedDocumentsCount ?? 0;
  set uploadedDocumentsCount(int? val) => _uploadedDocumentsCount = val;

  void incrementUploadedDocumentsCount(int amount) =>
      uploadedDocumentsCount = uploadedDocumentsCount + amount;

  bool hasUploadedDocumentsCount() => _uploadedDocumentsCount != null;

  // "remark" field.
  String? _remark;
  String get remark => _remark ?? '';
  set remark(String? val) => _remark = val;

  bool hasRemark() => _remark != null;

  // "remarkDate" field.
  String? _remarkDate;
  String get remarkDate => _remarkDate ?? '';
  set remarkDate(String? val) => _remarkDate = val;

  bool hasRemarkDate() => _remarkDate != null;

  // "clientName" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  set clientName(String? val) => _clientName = val;

  bool hasClientName() => _clientName != null;

  // "officeName" field.
  String? _officeName;
  String get officeName => _officeName ?? '';
  set officeName(String? val) => _officeName = val;

  bool hasOfficeName() => _officeName != null;

  // "partyName" field.
  String? _partyName;
  String get partyName => _partyName ?? '';
  set partyName(String? val) => _partyName = val;

  bool hasPartyName() => _partyName != null;

  // "isUrgent" field.
  String? _isUrgent;
  String get isUrgent => _isUrgent ?? '';
  set isUrgent(String? val) => _isUrgent = val;

  bool hasIsUrgent() => _isUrgent != null;

  // "inspectionFormData" field.
  InspectionFormDataStruct? _inspectionFormData;
  InspectionFormDataStruct get inspectionFormData =>
      _inspectionFormData ?? InspectionFormDataStruct();
  set inspectionFormData(InspectionFormDataStruct? val) =>
      _inspectionFormData = val;

  void updateInspectionFormData(Function(InspectionFormDataStruct) updateFn) {
    updateFn(_inspectionFormData ??= InspectionFormDataStruct());
  }

  bool hasInspectionFormData() => _inspectionFormData != null;

  // "latitude" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  set latitude(String? val) => _latitude = val;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  set longitude(String? val) => _longitude = val;

  bool hasLongitude() => _longitude != null;

  static ResponseStruct fromMap(Map<String, dynamic> data) => ResponseStruct(
        id: data['id'] as String?,
        refNo: data['refNo'] as String?,
        addressLine1: data['address_line1'] as String?,
        addressLine2: data['address_line2'] as String?,
        city: data['city'] as String?,
        pincode: data['pincode'] as String?,
        zone: data['zone'] as String?,
        state: data['state'] as String?,
        country: data['country'] as String?,
        contactperson1: data['contactperson1'] as String?,
        contact1: data['contact1'] as String?,
        contactperson2: data['contactperson2'] as String?,
        contact2: data['contact2'] as String?,
        statusId: data['statusId'] as String?,
        statusName: data['statusName'] as String?,
        dateAssigned: data['dateAssigned'] as String?,
        dateVisited: data['dateVisited'] as String?,
        dateCompleted: data['dateCompleted'] as String?,
        description: data['description'] as String?,
        isSurveyFormFilled: data['isSurveyFormFilled'] as String?,
        uploadedImagesCount: castToType<int>(data['uploadedImagesCount']),
        uploadedDocumentsCount: castToType<int>(data['uploadedDocumentsCount']),
        remark: data['remark'] as String?,
        remarkDate: data['remarkDate'] as String?,
        clientName: data['clientName'] as String?,
        officeName: data['officeName'] as String?,
        partyName: data['partyName'] as String?,
        isUrgent: data['isUrgent'] as String?,
        inspectionFormData:
            InspectionFormDataStruct.maybeFromMap(data['inspectionFormData']),
        latitude: data['latitude'] as String?,
        longitude: data['longitude'] as String?,
      );

  static ResponseStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResponseStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'refNo': _refNo,
        'address_line1': _addressLine1,
        'address_line2': _addressLine2,
        'city': _city,
        'pincode': _pincode,
        'zone': _zone,
        'state': _state,
        'country': _country,
        'contactperson1': _contactperson1,
        'contact1': _contact1,
        'contactperson2': _contactperson2,
        'contact2': _contact2,
        'statusId': _statusId,
        'statusName': _statusName,
        'dateAssigned': _dateAssigned,
        'dateVisited': _dateVisited,
        'dateCompleted': _dateCompleted,
        'description': _description,
        'isSurveyFormFilled': _isSurveyFormFilled,
        'uploadedImagesCount': _uploadedImagesCount,
        'uploadedDocumentsCount': _uploadedDocumentsCount,
        'remark': _remark,
        'remarkDate': _remarkDate,
        'clientName': _clientName,
        'officeName': _officeName,
        'partyName': _partyName,
        'isUrgent': _isUrgent,
        'inspectionFormData': _inspectionFormData?.toMap(),
        'latitude': _latitude,
        'longitude': _longitude,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'refNo': serializeParam(
          _refNo,
          ParamType.String,
        ),
        'address_line1': serializeParam(
          _addressLine1,
          ParamType.String,
        ),
        'address_line2': serializeParam(
          _addressLine2,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'pincode': serializeParam(
          _pincode,
          ParamType.String,
        ),
        'zone': serializeParam(
          _zone,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'contactperson1': serializeParam(
          _contactperson1,
          ParamType.String,
        ),
        'contact1': serializeParam(
          _contact1,
          ParamType.String,
        ),
        'contactperson2': serializeParam(
          _contactperson2,
          ParamType.String,
        ),
        'contact2': serializeParam(
          _contact2,
          ParamType.String,
        ),
        'statusId': serializeParam(
          _statusId,
          ParamType.String,
        ),
        'statusName': serializeParam(
          _statusName,
          ParamType.String,
        ),
        'dateAssigned': serializeParam(
          _dateAssigned,
          ParamType.String,
        ),
        'dateVisited': serializeParam(
          _dateVisited,
          ParamType.String,
        ),
        'dateCompleted': serializeParam(
          _dateCompleted,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'isSurveyFormFilled': serializeParam(
          _isSurveyFormFilled,
          ParamType.String,
        ),
        'uploadedImagesCount': serializeParam(
          _uploadedImagesCount,
          ParamType.int,
        ),
        'uploadedDocumentsCount': serializeParam(
          _uploadedDocumentsCount,
          ParamType.int,
        ),
        'remark': serializeParam(
          _remark,
          ParamType.String,
        ),
        'remarkDate': serializeParam(
          _remarkDate,
          ParamType.String,
        ),
        'clientName': serializeParam(
          _clientName,
          ParamType.String,
        ),
        'officeName': serializeParam(
          _officeName,
          ParamType.String,
        ),
        'partyName': serializeParam(
          _partyName,
          ParamType.String,
        ),
        'isUrgent': serializeParam(
          _isUrgent,
          ParamType.String,
        ),
        'inspectionFormData': serializeParam(
          _inspectionFormData,
          ParamType.DataStruct,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.String,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        refNo: deserializeParam(
          data['refNo'],
          ParamType.String,
          false,
        ),
        addressLine1: deserializeParam(
          data['address_line1'],
          ParamType.String,
          false,
        ),
        addressLine2: deserializeParam(
          data['address_line2'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        pincode: deserializeParam(
          data['pincode'],
          ParamType.String,
          false,
        ),
        zone: deserializeParam(
          data['zone'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        contactperson1: deserializeParam(
          data['contactperson1'],
          ParamType.String,
          false,
        ),
        contact1: deserializeParam(
          data['contact1'],
          ParamType.String,
          false,
        ),
        contactperson2: deserializeParam(
          data['contactperson2'],
          ParamType.String,
          false,
        ),
        contact2: deserializeParam(
          data['contact2'],
          ParamType.String,
          false,
        ),
        statusId: deserializeParam(
          data['statusId'],
          ParamType.String,
          false,
        ),
        statusName: deserializeParam(
          data['statusName'],
          ParamType.String,
          false,
        ),
        dateAssigned: deserializeParam(
          data['dateAssigned'],
          ParamType.String,
          false,
        ),
        dateVisited: deserializeParam(
          data['dateVisited'],
          ParamType.String,
          false,
        ),
        dateCompleted: deserializeParam(
          data['dateCompleted'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        isSurveyFormFilled: deserializeParam(
          data['isSurveyFormFilled'],
          ParamType.String,
          false,
        ),
        uploadedImagesCount: deserializeParam(
          data['uploadedImagesCount'],
          ParamType.int,
          false,
        ),
        uploadedDocumentsCount: deserializeParam(
          data['uploadedDocumentsCount'],
          ParamType.int,
          false,
        ),
        remark: deserializeParam(
          data['remark'],
          ParamType.String,
          false,
        ),
        remarkDate: deserializeParam(
          data['remarkDate'],
          ParamType.String,
          false,
        ),
        clientName: deserializeParam(
          data['clientName'],
          ParamType.String,
          false,
        ),
        officeName: deserializeParam(
          data['officeName'],
          ParamType.String,
          false,
        ),
        partyName: deserializeParam(
          data['partyName'],
          ParamType.String,
          false,
        ),
        isUrgent: deserializeParam(
          data['isUrgent'],
          ParamType.String,
          false,
        ),
        inspectionFormData: deserializeStructParam(
          data['inspectionFormData'],
          ParamType.DataStruct,
          false,
          structBuilder: InspectionFormDataStruct.fromSerializableMap,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.String,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseStruct &&
        id == other.id &&
        refNo == other.refNo &&
        addressLine1 == other.addressLine1 &&
        addressLine2 == other.addressLine2 &&
        city == other.city &&
        pincode == other.pincode &&
        zone == other.zone &&
        state == other.state &&
        country == other.country &&
        contactperson1 == other.contactperson1 &&
        contact1 == other.contact1 &&
        contactperson2 == other.contactperson2 &&
        contact2 == other.contact2 &&
        statusId == other.statusId &&
        statusName == other.statusName &&
        dateAssigned == other.dateAssigned &&
        dateVisited == other.dateVisited &&
        dateCompleted == other.dateCompleted &&
        description == other.description &&
        isSurveyFormFilled == other.isSurveyFormFilled &&
        uploadedImagesCount == other.uploadedImagesCount &&
        uploadedDocumentsCount == other.uploadedDocumentsCount &&
        remark == other.remark &&
        remarkDate == other.remarkDate &&
        clientName == other.clientName &&
        officeName == other.officeName &&
        partyName == other.partyName &&
        isUrgent == other.isUrgent &&
        inspectionFormData == other.inspectionFormData &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        refNo,
        addressLine1,
        addressLine2,
        city,
        pincode,
        zone,
        state,
        country,
        contactperson1,
        contact1,
        contactperson2,
        contact2,
        statusId,
        statusName,
        dateAssigned,
        dateVisited,
        dateCompleted,
        description,
        isSurveyFormFilled,
        uploadedImagesCount,
        uploadedDocumentsCount,
        remark,
        remarkDate,
        clientName,
        officeName,
        partyName,
        isUrgent,
        inspectionFormData,
        latitude,
        longitude
      ]);
}

ResponseStruct createResponseStruct({
  String? id,
  String? refNo,
  String? addressLine1,
  String? addressLine2,
  String? city,
  String? pincode,
  String? zone,
  String? state,
  String? country,
  String? contactperson1,
  String? contact1,
  String? contactperson2,
  String? contact2,
  String? statusId,
  String? statusName,
  String? dateAssigned,
  String? dateVisited,
  String? dateCompleted,
  String? description,
  String? isSurveyFormFilled,
  int? uploadedImagesCount,
  int? uploadedDocumentsCount,
  String? remark,
  String? remarkDate,
  String? clientName,
  String? officeName,
  String? partyName,
  String? isUrgent,
  InspectionFormDataStruct? inspectionFormData,
  String? latitude,
  String? longitude,
}) =>
    ResponseStruct(
      id: id,
      refNo: refNo,
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      city: city,
      pincode: pincode,
      zone: zone,
      state: state,
      country: country,
      contactperson1: contactperson1,
      contact1: contact1,
      contactperson2: contactperson2,
      contact2: contact2,
      statusId: statusId,
      statusName: statusName,
      dateAssigned: dateAssigned,
      dateVisited: dateVisited,
      dateCompleted: dateCompleted,
      description: description,
      isSurveyFormFilled: isSurveyFormFilled,
      uploadedImagesCount: uploadedImagesCount,
      uploadedDocumentsCount: uploadedDocumentsCount,
      remark: remark,
      remarkDate: remarkDate,
      clientName: clientName,
      officeName: officeName,
      partyName: partyName,
      isUrgent: isUrgent,
      inspectionFormData: inspectionFormData ?? InspectionFormDataStruct(),
      latitude: latitude,
      longitude: longitude,
    );
