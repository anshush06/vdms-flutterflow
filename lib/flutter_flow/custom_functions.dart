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

int getFilledFieldsCount(InspectionFormDataStruct? inspectionFormData) {
  if (inspectionFormData == null) {
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
  if (inspectionFormData.floorwiseDetails != null &&
      inspectionFormData.floorwiseDetails!.isNotEmpty) count++;

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

int? getDraftCaseIndexInList(
  List<ResponseStruct> draftCases,
  ResponseStruct? currentCase,
) {
  if (draftCases == null || currentCase == null) {
    return -1;
  }
  if (currentCase.id == '1') {
    return draftCases.length - 1 < 0 ? 0 : draftCases.length - 1;
  }
  // Check if the currentCase is present in draftCases
  int index = 0;
  for (final caseItem in draftCases) {
    if (caseItem.id == currentCase.id) {
      return index;
    }
    index++;
  }
  return -1;
}

bool filterCases(
  List<ResponseStruct>? draftCases,
  ResponseStruct? currentCase,
) {
  if (draftCases == null || currentCase == null) {
    return true;
  }

  // Check if the currentCase is present in draftCases
  for (final caseItem in draftCases) {
    if (caseItem.id == currentCase.id && caseItem.statusId == '4') {
      return false;
    }
  }

  return true;
}

int calculateTravelledDistance(
  int startReading,
  int endReading,
) {
  return endReading - startReading;
}

String? getImageUrl(String? imgUrl) {
  return imgUrl;
}

bool validateReading(
  String? startReading,
  String? endReading,
) {
  // Check if startReading or endReading is null
  if (startReading == null || endReading == null) {
    return false;
  }

  // Parse the String inputs to integers
  int? start = int.tryParse(startReading);
  int? end = int.tryParse(endReading);

  // Check if the parsing was successful
  if (start == null || end == null) {
    return false;
  }

  // Compare the readings
  return end - start >= 0 ? false : true;
}

String? getCurrentTimeStamp() {
  return DateTime.now().toString();
}

String? convertDataToJson(
  String? refNo,
  String? bank,
  String? engrName,
  String? currentDate,
  String? applicantName,
  String? address1,
  String? state,
  String? locality,
  String? pin,
  String? propertyLocatedIn,
  String? classificationOfLocality,
  String? namePlateFixed,
  String? propertyDemarcated,
  String? propertyType,
  String? permittedUseOfProperty,
  String? structureType,
  String? constructionStatus,
  String? roof,
  String? interiorConstructionQuality,
  String? exteriorConstructionQuality,
  String? valuationType,
  String? carpet,
  String? balcony,
  String? salableArea,
  String? plotArea,
  String? rentalValue,
  String? minimumMarketRates,
  String? maximumMarketRates,
  String? city,
  String? address2,
  String? personMet,
  String? relationWithOwner,
  String? landMark,
  String? roadWidth,
  String? propertyIdentified,
  String? cityCenter,
  String? railwayStation,
  String? busStop,
  String? hospital,
  String? north,
  String? south,
  String? east,
  String? west,
  String? otherPermittedUseOfProperty,
  String? noOfFloors,
  String? unitsPerFloor,
  String? noOfLifts,
  String? floorLocation,
  String? ageBuilding,
  String? completionState,
  String? otherRoof,
  String? wallPlasterPainting,
  String? doorsWindows,
  String? flooringType,
  String? plotLength,
  String? plotWidth,
  String? reasonPortionNotSeen,
  List<String>? anyOtherInformation,
  List<String>? floorDetails,
) {
  Map<String, dynamic> dataMap = {
    'ref_no': refNo,
    'bank': bank,
    'engr_name': engrName,
    'current_date': currentDate,
    'applicant_name': applicantName,
    'address_1': address1,
    'state': state,
    'locality': locality,
    'pin': pin,
    'property_located_in': propertyLocatedIn,
    'classification_of_locality': classificationOfLocality,
    'name_plate_fixed': namePlateFixed == "YES" ? "1" : "2",
    'property_demarcated': propertyDemarcated == "YES" ? "1" : "2",
    'property_type': propertyType,
    'permitted_use_of_property': permittedUseOfProperty,
    'structure_type': structureType,
    'construction_status': constructionStatus,
    'roof': roof,
    'interior_construction_quality': interiorConstructionQuality,
    'exterior_construction_quality': exteriorConstructionQuality,
    'valuation_type': valuationType,
    'carpet': carpet,
    'balcony': balcony,
    'salable_area': salableArea,
    'plot_area': plotArea,
    'rental_value': rentalValue,
    'minimum_market_rates': minimumMarketRates,
    'maximum_market_rates': maximumMarketRates,
    'city': city,
    'address_2': address2,
    'person_met': personMet,
    'relation_with_owner': relationWithOwner,
    'land_mark': landMark,
    'road_width': roadWidth,
    'property_identified': propertyIdentified,
    'city_center': cityCenter,
    'railway_station': railwayStation,
    'bus_stop': busStop,
    'hospital': hospital,
    'north': north,
    'south': south,
    'east': east,
    'west': west,
    'other_permitted_use_of_property': otherPermittedUseOfProperty,
    'no_of_floors': noOfFloors,
    'units_per_floor': unitsPerFloor,
    'no_of_lifts': noOfLifts,
    'floor_location': floorLocation,
    'age_building': ageBuilding,
    'completion_state': completionState,
    'other_roof': otherRoof,
    'wall_plaster_painting': wallPlasterPainting,
    'doors_windows': doorsWindows,
    'flooring_type': flooringType,
    'plot_length': plotLength,
    'plot_width': plotWidth,
    'reason_portion_not_seen': reasonPortionNotSeen,
    'any_other_information': anyOtherInformation,
    'floorwise_details': floorDetails
  };

  // Convert the Map to a JSON string
  return jsonEncode(dataMap);
}

String? createCommaSeparatedStringFromList(List<String> list) {
  return list!.join(',');
}

List<String> convertStringToListForDropdowns(String? input) {
  List<String> parts = input!.split(RegExp(r'[,##]'));

  // Filter out empty strings
  List<String> numericValues = parts.where((part) => part.isNotEmpty).toList();

  return numericValues;
}

String? getImageName(FFUploadedFile image) {
  return image.name!;
}

List<int> getImageByteArray(FFUploadedFile image) {
  return image.bytes!;
}

String? convertListDropdownsToHashSeparateStringForDraftReport(
    List<String>? list) {
  return list!.join('##');
}

String? getCoordinate(
  bool isLatitude,
  String location,
) {
  String input = location;
  RegExp regExp = RegExp(r'lat:\s*([0-9.-]+)\s*,\s*lng:\s*([0-9.-]+)');

  // Match the regular expression against the input string
  Match? match = regExp.firstMatch(input);

  if (match != null) {
    // Extract latitude and longitude from the match
    String latitude = match.group(1)!;
    String longitude = match.group(2)!;

    if (isLatitude) {
      return latitude == '0' ? '0' : latitude;
    } else {
      return longitude == '0' ? '0' : longitude;
    }
  }
  return '';
}

List<SitePictureListResponseStruct>? filterImagesBySection(
  String fieldName,
  List<SitePictureListResponseStruct>? imageList,
  String caseId,
) {
  if (fieldName == 'all') {
    return imageList;
  }
  if (imageList == null) {
    return null;
  }

  List<SitePictureListResponseStruct> filteredImages = imageList
      .where((image) => image.fieldName == fieldName && image.caseId == caseId)
      .toList();

  return filteredImages;
}

int getImageID(List<SitePictureListResponseStruct>? images) {
  if (images == null) {
    return 0;
  }

  return images.length;
}

int getCurrentImageIndexByID(
  String name,
  List<SitePictureListResponseStruct>? images,
) {
  if (images == null) {
    return -1; // Return -1 if the list is null
  }

  for (int index = 0; index < images.length; index++) {
    if (images[index].name == name) {
      return index; // Return the index if the id matches
    }
  }
  return -1; // Return -1 if no match is found
}

List<SitePictureListResponseStruct>? filterImagesByCaseID(
  List<SitePictureListResponseStruct>? imageList,
  String caseId,
) {
  if (imageList == null) {
    return null;
  }

  List<SitePictureListResponseStruct> filteredImages =
      imageList.where((image) => image.caseId == caseId).toList();

  return filteredImages;
}

bool checkEmptyFields(ResponseStruct caseDetails) {
  int i = 1;
  if (caseDetails.addressLine1 == null || caseDetails.addressLine1!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.city == null || caseDetails.city!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.state == null || caseDetails.state!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.contactperson1 == null ||
      caseDetails.contactperson1!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.contact1 == null || caseDetails.contact1!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.refNo == null ||
      caseDetails.inspectionFormData!.refNo!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.bank == null ||
      caseDetails.inspectionFormData!.bank!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.engrName == null ||
      caseDetails.inspectionFormData!.engrName!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.currentDate == null ||
      caseDetails.inspectionFormData!.currentDate!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.applicantName == null ||
      caseDetails.inspectionFormData!.applicantName!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.address1 == null ||
      caseDetails.inspectionFormData!.address1!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;

  if (caseDetails.inspectionFormData?.state == null ||
      caseDetails.inspectionFormData!.state!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.city == null ||
      caseDetails.inspectionFormData!.city!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.locality == null ||
      caseDetails.inspectionFormData!.locality!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.pin == null ||
      caseDetails.inspectionFormData!.pin!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.personMet == null ||
      caseDetails.inspectionFormData!.personMet!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.propertyLocatedIn != null ||
      caseDetails.inspectionFormData!.propertyLocatedIn!.isNotEmpty) {
    if (caseDetails.inspectionFormData?.propertyLocatedIn == "7") {
      if (caseDetails.inspectionFormData?.otherPropertyLocatedIn == null ||
          caseDetails.inspectionFormData!.otherPropertyLocatedIn!.isEmpty) {
        print('INDEX $i');
        return false;
      }
    }
  } else {
    print('INDEX ELSE1 $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.relationWithOwner == null ||
      caseDetails.inspectionFormData!.relationWithOwner!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.roadWidth == null ||
      caseDetails.inspectionFormData!.roadWidth!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.landMark == null ||
      caseDetails.inspectionFormData!.landMark!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.classificationOfLocality == null ||
      caseDetails.inspectionFormData!.classificationOfLocality!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.namePlateFixed == null ||
      caseDetails.inspectionFormData!.namePlateFixed!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.propertyDemarcated == null ||
      caseDetails.inspectionFormData!.propertyDemarcated!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.propertyIdentified == null ||
      caseDetails.inspectionFormData!.propertyIdentified!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.cityCenter == null ||
      caseDetails.inspectionFormData!.cityCenter!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.railwayStation == null ||
      caseDetails.inspectionFormData!.railwayStation!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.busStop == null ||
      caseDetails.inspectionFormData!.busStop!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.hospital == null ||
      caseDetails.inspectionFormData!.hospital!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.permittedUseOfProperty != null ||
      caseDetails.inspectionFormData!.permittedUseOfProperty!.isNotEmpty) {
    if (caseDetails.inspectionFormData?.permittedUseOfProperty == "12") {
      if (caseDetails.inspectionFormData?.otherPermittedUseOfProperty == null ||
          caseDetails
              .inspectionFormData!.otherPermittedUseOfProperty!.isEmpty) {
        return false;
        print('INDEX $i');
      }
    }
  } else {
    print('INDEX ELSE2 $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.propertyType == null ||
      caseDetails.inspectionFormData!.propertyType!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.north == null ||
      caseDetails.inspectionFormData!.north!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.east == null ||
      caseDetails.inspectionFormData!.east!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.south == null ||
      caseDetails.inspectionFormData!.south!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.west == null ||
      caseDetails.inspectionFormData!.west!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.noOfFloors == null ||
      caseDetails.inspectionFormData!.noOfFloors!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.noOfLifts == null ||
      caseDetails.inspectionFormData!.noOfLifts!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.floorLocation == null ||
      caseDetails.inspectionFormData!.floorLocation!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.structureType != null ||
      caseDetails.inspectionFormData!.structureType!.isNotEmpty) {
    if (caseDetails.inspectionFormData!.structureType == "7") {
      if (caseDetails.inspectionFormData?.otherStructureType == null ||
          caseDetails.inspectionFormData!.otherStructureType!.isEmpty) {
        print('INDEX $i');
        return false;
      }
    }
  } else {
    print('INDEX EL3 $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.ageBuilding == null ||
      caseDetails.inspectionFormData!.ageBuilding!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.constructionStatus != null ||
      caseDetails.inspectionFormData!.constructionStatus!.isNotEmpty) {
    if (caseDetails.inspectionFormData?.constructionStatus == "4") {
      if (caseDetails.inspectionFormData?.otherConstructionStatus == null ||
          caseDetails.inspectionFormData!.otherConstructionStatus!.isEmpty) {
        print('INDEX $i');
        return false;
      }
    }
  } else {
    print('INDEX EL4 $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.completionState == null ||
      caseDetails.inspectionFormData!.completionState!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.roof != null ||
      caseDetails.inspectionFormData!.roof!.isNotEmpty) {
    if (caseDetails.inspectionFormData?.roof == "7") {
      if (caseDetails.inspectionFormData?.otherRoof == null ||
          caseDetails.inspectionFormData!.otherRoof!.isEmpty) {
        print('INDEX $i');
        return false;
      }
    }
  } else {
    print('INDEX EL5 $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.unitsPerFloor == null ||
      caseDetails.inspectionFormData!.unitsPerFloor!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.wallPlasterPainting == null ||
      caseDetails.inspectionFormData!.wallPlasterPainting!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.doorsWindows == null ||
      caseDetails.inspectionFormData!.doorsWindows!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.flooringType == null ||
      caseDetails.inspectionFormData!.flooringType!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.interiorConstructionQuality == null ||
      caseDetails.inspectionFormData!.interiorConstructionQuality!.isEmpty) {
    print('INDEX $i');
    return false;
  }
  i++;
  if (caseDetails.inspectionFormData?.exteriorConstructionQuality == null ||
      caseDetails.inspectionFormData!.exteriorConstructionQuality!.isEmpty) {
    print('INDEX $i');
    return false;
  }

  return true;
}

List<int> getImageByteArrayFromSelfieList(
    List<SitePictureListResponseStruct>? sitePictures) {
  return sitePictures![0].bytes;
}

String? convertLocationToString(LatLng? latLng) {
  return latLng.toString() ?? '';
}

bool filterImagesByCaseIDAndImageType(
  List<SitePictureListResponseStruct>? imageList,
  String caseId,
  String imageType,
) {
  if (imageList == null) {
    return false;
  }

  for (var image in imageList) {
    if (image.caseId == caseId && image.fieldName == imageType) {
      return true;
    }
  }
  return false;
}

List<AnyOtherInfoResponseStruct>? convertAdditionalRemarkToDataType(
  String remark1,
  String remark2,
  String remark3,
  String remark4,
  String remark5,
  int limit,
) {
  // Initialize an empty list to store the JSON-like strings
  List<AnyOtherInfoResponseStruct> list = [];

  // Helper function to add non-empty remarks
  void addRemarkIfNotEmpty(String remark) {
    if (remark.trim().isNotEmpty) {
      // Assuming AnyOtherInfoResponseStruct has a constructor that accepts a string
      list.add(AnyOtherInfoResponseStruct(info: remark.trim()));
    }
  }

  // Check each remark and add to the list if not empty
  if (limit >= 1) {
    addRemarkIfNotEmpty(remark1);
  }
  if (limit >= 2) {
    addRemarkIfNotEmpty(remark2);
  }
  if (limit >= 3) {
    addRemarkIfNotEmpty(remark3);
  }
  if (limit >= 4) {
    addRemarkIfNotEmpty(remark4);
  }
  if (limit >= 5) {
    addRemarkIfNotEmpty(remark5);
  }

  return list;
}

List<dynamic> convertAdditionalRemarksToList(
    List<AnyOtherInfoResponseStruct>? remarkList) {
  // Check if remarkList is null, if so return an empty list
  if (remarkList == null) {
    return [];
  }

  // Create the list of maps for additional information
  List<Map<String, String>> remarkMapList = remarkList.map((info) {
    // Create a map for each info
    return {
      "info": info.info,
    };
  }).toList();

  // Return the list of maps
  return remarkMapList;
}

List<FloorWiseDetailsStruct> convertFloorDetailsToDataType(
  String floor1,
  String usage1,
  String occupied1,
  String accomodation1,
  String? actualArea1,
  String? floor2,
  String? floor3,
  String? floor4,
  String? floor5,
  String? usage2,
  String? usage3,
  String? usage4,
  String? usage5,
  String? occupied2,
  String? occupied3,
  String? occupied4,
  String? occupied5,
  String? accomodation2,
  String? accomodation3,
  String? accomodation4,
  String? accomodation5,
  String? actualArea2,
  String? actualArea3,
  String? actualArea4,
  String? actualArea5,
  int floorCount,
) {
  // Initialize an empty list to store the FloorWiseDetailsStruct objects
  List<FloorWiseDetailsStruct> floorDetailsList = [];

  // Helper function to add a floor detail if the floor is not empty
  void addFloorDetailIfNotEmpty(String? floor, String? usage, String? occupied,
      String? accomodation, String? actualArea) {
    if (floor != null && floor.trim().isNotEmpty) {
      floorDetailsList.add(FloorWiseDetailsStruct(
        floor: floor.trim(),
        usage: usage?.trim(),
        occupied: occupied?.trim(),
        accomodation: accomodation?.trim(),
        actualAreaMeasured: actualArea?.trim(),
      ));
    }
  }

  // Add each floor's details based on the floor count
  if (floorCount >= 1) {
    addFloorDetailIfNotEmpty(
        floor1, usage1, occupied1, accomodation1, actualArea1);
  }
  if (floorCount >= 2) {
    addFloorDetailIfNotEmpty(
        floor2, usage2, occupied2, accomodation2, actualArea2);
  }
  if (floorCount >= 3) {
    addFloorDetailIfNotEmpty(
        floor3, usage3, occupied3, accomodation3, actualArea3);
  }
  if (floorCount >= 4) {
    addFloorDetailIfNotEmpty(
        floor4, usage4, occupied4, accomodation4, actualArea4);
  }
  if (floorCount >= 5) {
    addFloorDetailIfNotEmpty(
        floor5, usage5, occupied5, accomodation5, actualArea5);
  }

  // Return the list of FloorWiseDetailsStruct objects
  return floorDetailsList;
}

List<dynamic> convertFloorDetailsToList(
    List<FloorWiseDetailsStruct>? floorDetailsList) {
  // Check if floorDetailsList is not null, if so return an empty list
  if (floorDetailsList == null) {
    return [];
  }

  // Create the list of maps for floor details
  List<Map<String, String?>> floorDetailsMapList =
      floorDetailsList.map((details) {
    return {
      "floor": details.floor,
      "usage": details.usage,
      "occupied": details.occupied,
      "accomodation": details.accomodation,
      "actual_measured_area": details.actualAreaMeasured?.isNotEmpty == true
          ? details.actualAreaMeasured
          : '',
    };
  }).toList();

  // Return the list of maps
  return floorDetailsMapList;
}
