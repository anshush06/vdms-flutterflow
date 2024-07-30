import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String? hashPassword(String? userPassword) {
  List<int> utf8Bytes = utf8.encode(userPassword!);
  // Encode the UTF-8 bytes to a base64 string
  String base64String = base64.encode(utf8Bytes);
  return base64String;
}

int getFilledFieldsCount(
  InspectionFormDataStruct? inspectionFormData,
  ResponseStruct? caseDetails,
) {
  if (inspectionFormData == null || caseDetails == null) {
    return 0;
  }

  int count = 0;

  // Check each field and increment the count if the field is filled
  if (inspectionFormData.refNo?.isNotEmpty ?? false) count++;
  if (inspectionFormData.bank?.isNotEmpty ?? false) count++;
  if (inspectionFormData.engrName?.isNotEmpty ?? false) count++;
  if (inspectionFormData.currentDate?.isNotEmpty ?? false) count++;
  if (inspectionFormData.applicantName?.isNotEmpty ?? false) count++;
  if (inspectionFormData.address1?.isNotEmpty ?? false) count++;
  if (inspectionFormData.address2?.isNotEmpty ?? false) count++;
  if (inspectionFormData.state?.isNotEmpty ?? false) count++;
  if (inspectionFormData.city?.isNotEmpty ?? false) count++;
  if (inspectionFormData.locality?.isNotEmpty ?? false) count++;
  if (inspectionFormData.pin?.isNotEmpty ?? false) count++;
  if (inspectionFormData.personMet?.isNotEmpty ?? false) count++;
  if (inspectionFormData.propertyLocatedIn?.isNotEmpty ?? false) count++;
  if (inspectionFormData.otherPropertyLocatedIn?.isNotEmpty ?? false) count++;
  if (inspectionFormData.relationWithOwner?.isNotEmpty ?? false) count++;
  if (inspectionFormData.roadWidth?.isNotEmpty ?? false) count++;
  if (inspectionFormData.landMark?.isNotEmpty ?? false) count++;
  if (inspectionFormData.classificationOfLocality?.isNotEmpty ?? false) count++;
  if (inspectionFormData.namePlateFixed?.isNotEmpty ?? false) count++;
  if (inspectionFormData.propertyDemarcated?.isNotEmpty ?? false) count++;
  if (inspectionFormData.propertyIdentified?.isNotEmpty ?? false) count++;
  if (inspectionFormData.cityCenter?.isNotEmpty ?? false) count++;
  if (inspectionFormData.railwayStation?.isNotEmpty ?? false) count++;
  if (inspectionFormData.busStop?.isNotEmpty ?? false) count++;
  if (inspectionFormData.hospital?.isNotEmpty ?? false) count++;
  if (inspectionFormData.permittedUseOfProperty?.isNotEmpty ?? false) count++;
  if (inspectionFormData.otherPermittedUseOfProperty?.isNotEmpty ?? false)
    count++;
  if (inspectionFormData.propertyType?.isNotEmpty ?? false) count++;
  if (inspectionFormData.north?.isNotEmpty ?? false) count++;
  if (inspectionFormData.east?.isNotEmpty ?? false) count++;
  if (inspectionFormData.south?.isNotEmpty ?? false) count++;
  if (inspectionFormData.west?.isNotEmpty ?? false) count++;
  if (inspectionFormData.noOfFloors?.isNotEmpty ?? false) count++;
  if (inspectionFormData.noOfLifts?.isNotEmpty ?? false) count++;
  if (inspectionFormData.floorLocation?.isNotEmpty ?? false) count++;
  if (inspectionFormData.structureType?.isNotEmpty ?? false) count++;
  if (inspectionFormData.otherStructureType?.isNotEmpty ?? false) count++;
  if (inspectionFormData.ageBuilding?.isNotEmpty ?? false) count++;
  if (inspectionFormData.floorwiseDetails != null &&
      inspectionFormData.floorwiseDetails!.isNotEmpty) count++;
  if (inspectionFormData.constructionStatus?.isNotEmpty ?? false) count++;
  if (inspectionFormData.otherConstructionStatus?.isNotEmpty ?? false) count++;
  if (inspectionFormData.completionState?.isNotEmpty ?? false) count++;
  if (inspectionFormData.roof?.isNotEmpty ?? false) count++;
  if (inspectionFormData.otherRoof?.isNotEmpty ?? false) count++;
  if (inspectionFormData.unitsPerFloor?.isNotEmpty ?? false) count++;
  if (inspectionFormData.wallPlasterPainting?.isNotEmpty ?? false) count++;
  if (inspectionFormData.doorsWindows?.isNotEmpty ?? false) count++;
  if (inspectionFormData.flooringType?.isNotEmpty ?? false) count++;
  if (inspectionFormData.interiorConstructionQuality?.isNotEmpty ?? false)
    count++;
  if (inspectionFormData.exteriorConstructionQuality?.isNotEmpty ?? false)
    count++;
  if (inspectionFormData.valuationType?.isNotEmpty ?? false) count++;
  if (inspectionFormData.carpet?.isNotEmpty ?? false) count++;
  if (inspectionFormData.balcony?.isNotEmpty ?? false) count++;
  if (inspectionFormData.salableArea?.isNotEmpty ?? false) count++;
  if (inspectionFormData.plotLength?.isNotEmpty ?? false) count++;
  if (inspectionFormData.plotWidth?.isNotEmpty ?? false) count++;
  if (inspectionFormData.plotArea?.isNotEmpty ?? false) count++;
  if (inspectionFormData.rentalValue?.isNotEmpty ?? false) count++;
  if (inspectionFormData.minimumMarketRates?.isNotEmpty ?? false) count++;
  if (inspectionFormData.maximumMarketRates?.isNotEmpty ?? false) count++;
  if (inspectionFormData.dealerName?.isNotEmpty ?? false) count++;
  if (inspectionFormData.dealerMobileNumber?.isNotEmpty ?? false) count++;
  if (inspectionFormData.reasonPortionNotSeen?.isNotEmpty ?? false) count++;
  if (inspectionFormData.anyOtherInformation != null &&
      inspectionFormData.anyOtherInformation!.isNotEmpty) count++;

  if (caseDetails.refNo?.isNotEmpty ?? false) count++;
  //if (caseDetails.address_line1?.isNotEmpty ?? false) count++;
  //if (caseDetails.address_line2?.isNotEmpty ?? false) count++;
  if (caseDetails.city?.isNotEmpty ?? false) count++;
  if (caseDetails.pincode?.isNotEmpty ?? false) count++;
  if (caseDetails.zone?.isNotEmpty ?? false) count++;
  if (caseDetails.state?.isNotEmpty ?? false) count++;
  if (caseDetails.country?.isNotEmpty ?? false) count++;
  if (caseDetails.contactperson1?.isNotEmpty ?? false) count++;
  if (caseDetails.contact1?.isNotEmpty ?? false) count++;
  if (caseDetails.contactperson2?.isNotEmpty ?? false) count++;
  if (caseDetails.contact2?.isNotEmpty ?? false) count++;
  if (caseDetails.dateAssigned?.isNotEmpty ?? false) count++;
  if (caseDetails.description?.isNotEmpty ?? false) count++;
  if (caseDetails.remark?.isNotEmpty ?? false) count++;
  if (caseDetails.clientName?.isNotEmpty ?? false) count++;
  if (caseDetails.officeName?.isNotEmpty ?? false) count++;
  if (caseDetails.partyName?.isNotEmpty ?? false) count++;

  return count;
}

int convertStringtoInteger(String userId) {
  return int.parse(userId);
}

String parseCaseHistoryComment(String comment) {
  comment = comment.replaceAll(RegExp(r'<span[^>]*><em>|<\/em><\/span>'), '');

  // Split the comment by <br> tags to separate different sections
  List<String> parts = comment.split(RegExp(r'<br\s*\/?>'));

  // Trim any leading or trailing whitespace from each part
  for (int i = 0; i < parts.length; i++) {
    parts[i] = parts[i].trim();
  }

  // The first part before the first <br>
  String beforeFirstBr = parts[0];

  // Any parts after the first <br>
  List<String> afterFirstBr = parts.sublist(1);

  // Print the results
  return beforeFirstBr;
}

String getTimeStampOfRemark() {
  DateTime now = DateTime.now();
  DateFormat formatter = DateFormat('dd-MMM-yyyy hh:mm a');
  return formatter.format(now);
}

String getStateValueForStateDropdown(
  List<String> allStates,
  List<String> statesValues,
  String stateName,
) {
  int index = allStates.indexOf(stateName);

  if (index != -1) {
    return statesValues[index];
  }
  return "1";
}
