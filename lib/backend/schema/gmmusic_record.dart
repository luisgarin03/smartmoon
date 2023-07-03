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

  void _initializeFields() {}

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

Map<String, dynamic> createGmmusicRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class GmmusicRecordDocumentEquality implements Equality<GmmusicRecord> {
  const GmmusicRecordDocumentEquality();

  @override
  bool equals(GmmusicRecord? e1, GmmusicRecord? e2) {
    return;
  }

  @override
  int hash(GmmusicRecord? e) => const ListEquality().hash([]);

  @override
  bool isValidKey(Object? o) => o is GmmusicRecord;
}
