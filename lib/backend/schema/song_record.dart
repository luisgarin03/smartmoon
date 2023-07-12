import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SongRecord extends FirestoreRecord {
  SongRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  bool hasCover() => _cover != null;

  // "dad" field.
  String? _dad;
  String get dad => _dad ?? '';
  bool hasDad() => _dad != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _cover = snapshotData['cover'] as String?;
    _dad = snapshotData['dad'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('song')
          : FirebaseFirestore.instance.collectionGroup('song');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('song').doc();

  static Stream<SongRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SongRecord.fromSnapshot(s));

  static Future<SongRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SongRecord.fromSnapshot(s));

  static SongRecord fromSnapshot(DocumentSnapshot snapshot) => SongRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SongRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SongRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SongRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SongRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSongRecordData({
  String? name,
  String? cover,
  String? dad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'cover': cover,
      'dad': dad,
    }.withoutNulls,
  );

  return firestoreData;
}

class SongRecordDocumentEquality implements Equality<SongRecord> {
  const SongRecordDocumentEquality();

  @override
  bool equals(SongRecord? e1, SongRecord? e2) {
    return e1?.name == e2?.name && e1?.cover == e2?.cover && e1?.dad == e2?.dad;
  }

  @override
  int hash(SongRecord? e) =>
      const ListEquality().hash([e?.name, e?.cover, e?.dad]);

  @override
  bool isValidKey(Object? o) => o is SongRecord;
}
