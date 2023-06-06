import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReceiptsRecord extends FirestoreRecord {
  ReceiptsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _date = snapshotData['date'] as String?;
    _image = snapshotData['image'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('receipts');

  static Stream<ReceiptsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReceiptsRecord.fromSnapshot(s));

  static Future<ReceiptsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReceiptsRecord.fromSnapshot(s));

  static ReceiptsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReceiptsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReceiptsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReceiptsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReceiptsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createReceiptsRecordData({
  String? description,
  String? date,
  String? image,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'date': date,
      'image': image,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}
