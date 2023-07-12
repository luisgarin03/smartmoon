import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackRecord extends FirestoreRecord {
  TrackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "path" field.
  String? _path;
  String get path => _path ?? '';
  bool hasPath() => _path != null;

  // "lastPlayed" field.
  DateTime? _lastPlayed;
  DateTime? get lastPlayed => _lastPlayed;
  bool hasLastPlayed() => _lastPlayed != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _path = snapshotData['path'] as String?;
    _lastPlayed = snapshotData['lastPlayed'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('track')
          : FirebaseFirestore.instance.collectionGroup('track');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('track').doc();

  static Stream<TrackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackRecord.fromSnapshot(s));

  static Future<TrackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackRecord.fromSnapshot(s));

  static TrackRecord fromSnapshot(DocumentSnapshot snapshot) => TrackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrackRecordData({
  String? name,
  String? path,
  DateTime? lastPlayed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'path': path,
      'lastPlayed': lastPlayed,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackRecordDocumentEquality implements Equality<TrackRecord> {
  const TrackRecordDocumentEquality();

  @override
  bool equals(TrackRecord? e1, TrackRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.path == e2?.path &&
        e1?.lastPlayed == e2?.lastPlayed;
  }

  @override
  int hash(TrackRecord? e) =>
      const ListEquality().hash([e?.name, e?.path, e?.lastPlayed]);

  @override
  bool isValidKey(Object? o) => o is TrackRecord;
}
