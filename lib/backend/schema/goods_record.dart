import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoodsRecord extends FirestoreRecord {
  GoodsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "mjhg" field.
  int? _mjhg;
  int get mjhg => _mjhg ?? 0;
  bool hasMjhg() => _mjhg != null;

  void _initializeFields() {
    _mjhg = castToType<int>(snapshotData['mjhg']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goods');

  static Stream<GoodsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoodsRecord.fromSnapshot(s));

  static Future<GoodsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoodsRecord.fromSnapshot(s));

  static GoodsRecord fromSnapshot(DocumentSnapshot snapshot) => GoodsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoodsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoodsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoodsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GoodsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGoodsRecordData({
  int? mjhg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mjhg': mjhg,
    }.withoutNulls,
  );

  return firestoreData;
}

class GoodsRecordDocumentEquality implements Equality<GoodsRecord> {
  const GoodsRecordDocumentEquality();

  @override
  bool equals(GoodsRecord? e1, GoodsRecord? e2) {
    return e1?.mjhg == e2?.mjhg;
  }

  @override
  int hash(GoodsRecord? e) => const ListEquality().hash([e?.mjhg]);

  @override
  bool isValidKey(Object? o) => o is GoodsRecord;
}
