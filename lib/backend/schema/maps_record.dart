import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapsRecord extends FirestoreRecord {
  MapsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "floor" field.
  String? _floor;
  String get floor => _floor ?? '';
  bool hasFloor() => _floor != null;

  // "plan_desc" field.
  String? _planDesc;
  String get planDesc => _planDesc ?? '';
  bool hasPlanDesc() => _planDesc != null;

  // "floor_plans" field.
  List<String>? _floorPlans;
  List<String> get floorPlans => _floorPlans ?? const [];
  bool hasFloorPlans() => _floorPlans != null;

  void _initializeFields() {
    _floor = snapshotData['floor'] as String?;
    _planDesc = snapshotData['plan_desc'] as String?;
    _floorPlans = getDataList(snapshotData['floor_plans']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Maps');

  static Stream<MapsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MapsRecord.fromSnapshot(s));

  static Future<MapsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MapsRecord.fromSnapshot(s));

  static MapsRecord fromSnapshot(DocumentSnapshot snapshot) => MapsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MapsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MapsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MapsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MapsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMapsRecordData({
  String? floor,
  String? planDesc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'floor': floor,
      'plan_desc': planDesc,
    }.withoutNulls,
  );

  return firestoreData;
}

class MapsRecordDocumentEquality implements Equality<MapsRecord> {
  const MapsRecordDocumentEquality();

  @override
  bool equals(MapsRecord? e1, MapsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.floor == e2?.floor &&
        e1?.planDesc == e2?.planDesc &&
        listEquality.equals(e1?.floorPlans, e2?.floorPlans);
  }

  @override
  int hash(MapsRecord? e) =>
      const ListEquality().hash([e?.floor, e?.planDesc, e?.floorPlans]);

  @override
  bool isValidKey(Object? o) => o is MapsRecord;
}
