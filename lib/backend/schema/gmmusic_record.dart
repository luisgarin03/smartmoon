import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GmmusicRecord extends FirestoreRecord {
  GmmusicRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "tracks" field.
  List<DocumentReference>? _tracks;
  List<DocumentReference> get tracks => _tracks ?? const [];
  bool hasTracks() => _tracks != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _tracks = getDataList(snapshotData['tracks']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gmmusic');

  static Stream<GmmusicRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GmmusicRecord.fromSnapshot(s));

  static Future<GmmusicRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GmmusicRecord.fromSnapshot(s));

  static GmmusicRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GmmusicRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GmmusicRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GmmusicRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GmmusicRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GmmusicRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGmmusicRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class GmmusicRecordDocumentEquality implements Equality<GmmusicRecord> {
  const GmmusicRecordDocumentEquality();

  @override
  bool equals(GmmusicRecord? e1, GmmusicRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name && listEquality.equals(e1?.tracks, e2?.tracks);
  }

  @override
  int hash(GmmusicRecord? e) => const ListEquality().hash([e?.name, e?.tracks]);

  @override
  bool isValidKey(Object? o) => o is GmmusicRecord;
}
