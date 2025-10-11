import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IdentificationCardRecord extends FirestoreRecord {
  IdentificationCardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ic_number" field.
  String? _icNumber;
  String get icNumber => _icNumber ?? '';
  bool hasIcNumber() => _icNumber != null;

  // "adress" field.
  String? _adress;
  String get adress => _adress ?? '';
  bool hasAdress() => _adress != null;

  // "face_image" field.
  String? _faceImage;
  String get faceImage => _faceImage ?? '';
  bool hasFaceImage() => _faceImage != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _icNumber = snapshotData['ic_number'] as String?;
    _adress = snapshotData['adress'] as String?;
    _faceImage = snapshotData['face_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('identification_card');

  static Stream<IdentificationCardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IdentificationCardRecord.fromSnapshot(s));

  static Future<IdentificationCardRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IdentificationCardRecord.fromSnapshot(s));

  static IdentificationCardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IdentificationCardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IdentificationCardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IdentificationCardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IdentificationCardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IdentificationCardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIdentificationCardRecordData({
  String? image,
  String? name,
  String? icNumber,
  String? adress,
  String? faceImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'name': name,
      'ic_number': icNumber,
      'adress': adress,
      'face_image': faceImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class IdentificationCardRecordDocumentEquality
    implements Equality<IdentificationCardRecord> {
  const IdentificationCardRecordDocumentEquality();

  @override
  bool equals(IdentificationCardRecord? e1, IdentificationCardRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.icNumber == e2?.icNumber &&
        e1?.adress == e2?.adress &&
        e1?.faceImage == e2?.faceImage;
  }

  @override
  int hash(IdentificationCardRecord? e) => const ListEquality()
      .hash([e?.image, e?.name, e?.icNumber, e?.adress, e?.faceImage]);

  @override
  bool isValidKey(Object? o) => o is IdentificationCardRecord;
}
