import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbackRecord extends FirestoreRecord {
  FeedbackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "RatingStar" field.
  int? _ratingStar;
  int get ratingStar => _ratingStar ?? 0;
  bool hasRatingStar() => _ratingStar != null;

  // "Bugs" field.
  String? _bugs;
  String get bugs => _bugs ?? '';
  bool hasBugs() => _bugs != null;

  // "UserExperience" field.
  String? _userExperience;
  String get userExperience => _userExperience ?? '';
  bool hasUserExperience() => _userExperience != null;

  // "User" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "timeDate" field.
  DateTime? _timeDate;
  DateTime? get timeDate => _timeDate;
  bool hasTimeDate() => _timeDate != null;

  void _initializeFields() {
    _ratingStar = castToType<int>(snapshotData['RatingStar']);
    _bugs = snapshotData['Bugs'] as String?;
    _userExperience = snapshotData['UserExperience'] as String?;
    _user = snapshotData['User'] as String?;
    _timeDate = snapshotData['timeDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackRecord.fromSnapshot(s));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbackRecord.fromSnapshot(s));

  static FeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackRecordData({
  int? ratingStar,
  String? bugs,
  String? userExperience,
  String? user,
  DateTime? timeDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RatingStar': ratingStar,
      'Bugs': bugs,
      'UserExperience': userExperience,
      'User': user,
      'timeDate': timeDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackRecordDocumentEquality implements Equality<FeedbackRecord> {
  const FeedbackRecordDocumentEquality();

  @override
  bool equals(FeedbackRecord? e1, FeedbackRecord? e2) {
    return e1?.ratingStar == e2?.ratingStar &&
        e1?.bugs == e2?.bugs &&
        e1?.userExperience == e2?.userExperience &&
        e1?.user == e2?.user &&
        e1?.timeDate == e2?.timeDate;
  }

  @override
  int hash(FeedbackRecord? e) => const ListEquality()
      .hash([e?.ratingStar, e?.bugs, e?.userExperience, e?.user, e?.timeDate]);

  @override
  bool isValidKey(Object? o) => o is FeedbackRecord;
}
