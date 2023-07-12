// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MusicStruct extends FFFirebaseStruct {
  MusicStruct({
    String? name,
    String? duration,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _duration = duration,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  set duration(String? val) => _duration = val;
  bool hasDuration() => _duration != null;

  static MusicStruct fromMap(Map<String, dynamic> data) => MusicStruct(
        name: data['name'] as String?,
        duration: data['duration'] as String?,
      );

  static MusicStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MusicStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'duration': _duration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => toMap();
  static MusicStruct fromSerializableMap(Map<String, dynamic> data) =>
      fromMap(data);

  @override
  String toString() => 'MusicStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MusicStruct &&
        name == other.name &&
        duration == other.duration;
  }

  @override
  int get hashCode => const ListEquality().hash([name, duration]);
}

MusicStruct createMusicStruct({
  String? name,
  String? duration,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MusicStruct(
      name: name,
      duration: duration,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MusicStruct? updateMusicStruct(
  MusicStruct? music, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    music
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMusicStructData(
  Map<String, dynamic> firestoreData,
  MusicStruct? music,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (music == null) {
    return;
  }
  if (music.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && music.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final musicData = getMusicFirestoreData(music, forFieldValue);
  final nestedData = musicData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = music.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMusicFirestoreData(
  MusicStruct? music, [
  bool forFieldValue = false,
]) {
  if (music == null) {
    return {};
  }
  final firestoreData = mapToFirestore(music.toMap());

  // Add any Firestore field values
  music.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMusicListFirestoreData(
  List<MusicStruct>? musics,
) =>
    musics?.map((e) => getMusicFirestoreData(e, true)).toList() ?? [];
