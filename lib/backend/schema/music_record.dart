import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MusicRecord extends FirestoreRecord {
  MusicRecord._(
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

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _path = snapshotData['path'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('music');

  static Stream<MusicRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MusicRecord.fromSnapshot(s));

  static Future<MusicRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MusicRecord.fromSnapshot(s));

  static MusicRecord fromSnapshot(DocumentSnapshot snapshot) => MusicRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MusicRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MusicRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MusicRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MusicRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMusicRecordData({
  String? name,
  String? path,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'path': path,
    }.withoutNulls,
  );

  return firestoreData;
}

class MusicRecordDocumentEquality implements Equality<MusicRecord> {
  const MusicRecordDocumentEquality();

  @override
  bool equals(MusicRecord? e1, MusicRecord? e2) {
    return e1?.name == e2?.name && e1?.path == e2?.path;
  }

  @override
  int hash(MusicRecord? e) => const ListEquality().hash([e?.name, e?.path]);

  @override
  bool isValidKey(Object? o) => o is MusicRecord;
}
