import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetingsRecord extends FirestoreRecord {
  MeetingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "meeting_id" field.
  String? _meetingId;
  String get meetingId => _meetingId ?? '';
  bool hasMeetingId() => _meetingId != null;

  // "host_staff_id" field.
  String? _hostStaffId;
  String get hostStaffId => _hostStaffId ?? '';
  bool hasHostStaffId() => _hostStaffId != null;

  // "meeting_name" field.
  String? _meetingName;
  String get meetingName => _meetingName ?? '';
  bool hasMeetingName() => _meetingName != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "uid" field.
  List<DocumentReference>? _uid;
  List<DocumentReference> get uid => _uid ?? const [];
  bool hasUid() => _uid != null;

  // "page_url" field.
  String? _pageUrl;
  String get pageUrl => _pageUrl ?? '';
  bool hasPageUrl() => _pageUrl != null;

  // "floor" field.
  String? _floor;
  String get floor => _floor ?? '';
  bool hasFloor() => _floor != null;

  // "meeting_room" field.
  String? _meetingRoom;
  String get meetingRoom => _meetingRoom ?? '';
  bool hasMeetingRoom() => _meetingRoom != null;

  void _initializeFields() {
    _meetingId = snapshotData['meeting_id'] as String?;
    _hostStaffId = snapshotData['host_staff_id'] as String?;
    _meetingName = snapshotData['meeting_name'] as String?;
    _time = snapshotData['time'] as String?;
    _date = snapshotData['date'] as String?;
    _uid = getDataList(snapshotData['uid']);
    _pageUrl = snapshotData['page_url'] as String?;
    _floor = snapshotData['floor'] as String?;
    _meetingRoom = snapshotData['meeting_room'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meetings');

  static Stream<MeetingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeetingsRecord.fromSnapshot(s));

  static Future<MeetingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeetingsRecord.fromSnapshot(s));

  static MeetingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeetingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeetingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeetingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeetingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeetingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeetingsRecordData({
  String? meetingId,
  String? hostStaffId,
  String? meetingName,
  String? time,
  String? date,
  String? pageUrl,
  String? floor,
  String? meetingRoom,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'meeting_id': meetingId,
      'host_staff_id': hostStaffId,
      'meeting_name': meetingName,
      'time': time,
      'date': date,
      'page_url': pageUrl,
      'floor': floor,
      'meeting_room': meetingRoom,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeetingsRecordDocumentEquality implements Equality<MeetingsRecord> {
  const MeetingsRecordDocumentEquality();

  @override
  bool equals(MeetingsRecord? e1, MeetingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.meetingId == e2?.meetingId &&
        e1?.hostStaffId == e2?.hostStaffId &&
        e1?.meetingName == e2?.meetingName &&
        e1?.time == e2?.time &&
        e1?.date == e2?.date &&
        listEquality.equals(e1?.uid, e2?.uid) &&
        e1?.pageUrl == e2?.pageUrl &&
        e1?.floor == e2?.floor &&
        e1?.meetingRoom == e2?.meetingRoom;
  }

  @override
  int hash(MeetingsRecord? e) => const ListEquality().hash([
        e?.meetingId,
        e?.hostStaffId,
        e?.meetingName,
        e?.time,
        e?.date,
        e?.uid,
        e?.pageUrl,
        e?.floor,
        e?.meetingRoom
      ]);

  @override
  bool isValidKey(Object? o) => o is MeetingsRecord;
}
