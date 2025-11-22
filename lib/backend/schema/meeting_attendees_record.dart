import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetingAttendeesRecord extends FirestoreRecord {
  MeetingAttendeesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "time_entered" field.
  DateTime? _timeEntered;
  DateTime? get timeEntered => _timeEntered;
  bool hasTimeEntered() => _timeEntered != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "meeting_id" field.
  String? _meetingId;
  String get meetingId => _meetingId ?? '';
  bool hasMeetingId() => _meetingId != null;

  void _initializeFields() {
    _timeEntered = snapshotData['time_entered'] as DateTime?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _meetingId = snapshotData['meeting_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meeting_attendees');

  static Stream<MeetingAttendeesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeetingAttendeesRecord.fromSnapshot(s));

  static Future<MeetingAttendeesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MeetingAttendeesRecord.fromSnapshot(s));

  static MeetingAttendeesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeetingAttendeesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeetingAttendeesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeetingAttendeesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeetingAttendeesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeetingAttendeesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeetingAttendeesRecordData({
  DateTime? timeEntered,
  DocumentReference? uid,
  String? meetingId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'time_entered': timeEntered,
      'uid': uid,
      'meeting_id': meetingId,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeetingAttendeesRecordDocumentEquality
    implements Equality<MeetingAttendeesRecord> {
  const MeetingAttendeesRecordDocumentEquality();

  @override
  bool equals(MeetingAttendeesRecord? e1, MeetingAttendeesRecord? e2) {
    return e1?.timeEntered == e2?.timeEntered &&
        e1?.uid == e2?.uid &&
        e1?.meetingId == e2?.meetingId;
  }

  @override
  int hash(MeetingAttendeesRecord? e) =>
      const ListEquality().hash([e?.timeEntered, e?.uid, e?.meetingId]);

  @override
  bool isValidKey(Object? o) => o is MeetingAttendeesRecord;
}
