import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PastMeetingsRecord extends FirestoreRecord {
  PastMeetingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "meeting_id" field.
  String? _meetingId;
  String get meetingId => _meetingId ?? '';
  bool hasMeetingId() => _meetingId != null;

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

  // "time_entered" field.
  DateTime? _timeEntered;
  DateTime? get timeEntered => _timeEntered;
  bool hasTimeEntered() => _timeEntered != null;

  // "floor" field.
  String? _floor;
  String get floor => _floor ?? '';
  bool hasFloor() => _floor != null;

  // "meeting_room" field.
  String? _meetingRoom;
  String get meetingRoom => _meetingRoom ?? '';
  bool hasMeetingRoom() => _meetingRoom != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _meetingId = snapshotData['meeting_id'] as String?;
    _meetingName = snapshotData['meeting_name'] as String?;
    _time = snapshotData['time'] as String?;
    _date = snapshotData['date'] as String?;
    _timeEntered = snapshotData['time_entered'] as DateTime?;
    _floor = snapshotData['floor'] as String?;
    _meetingRoom = snapshotData['meeting_room'] as String?;
    _uid = snapshotData['uid'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('past_meetings');

  static Stream<PastMeetingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PastMeetingsRecord.fromSnapshot(s));

  static Future<PastMeetingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PastMeetingsRecord.fromSnapshot(s));

  static PastMeetingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PastMeetingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PastMeetingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PastMeetingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PastMeetingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PastMeetingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPastMeetingsRecordData({
  String? meetingId,
  String? meetingName,
  String? time,
  String? date,
  DateTime? timeEntered,
  String? floor,
  String? meetingRoom,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'meeting_id': meetingId,
      'meeting_name': meetingName,
      'time': time,
      'date': date,
      'time_entered': timeEntered,
      'floor': floor,
      'meeting_room': meetingRoom,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class PastMeetingsRecordDocumentEquality
    implements Equality<PastMeetingsRecord> {
  const PastMeetingsRecordDocumentEquality();

  @override
  bool equals(PastMeetingsRecord? e1, PastMeetingsRecord? e2) {
    return e1?.meetingId == e2?.meetingId &&
        e1?.meetingName == e2?.meetingName &&
        e1?.time == e2?.time &&
        e1?.date == e2?.date &&
        e1?.timeEntered == e2?.timeEntered &&
        e1?.floor == e2?.floor &&
        e1?.meetingRoom == e2?.meetingRoom &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(PastMeetingsRecord? e) => const ListEquality().hash([
        e?.meetingId,
        e?.meetingName,
        e?.time,
        e?.date,
        e?.timeEntered,
        e?.floor,
        e?.meetingRoom,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is PastMeetingsRecord;
}
