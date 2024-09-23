import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MixnmatchoutfitsRecord extends FirestoreRecord {
  MixnmatchoutfitsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  bool hasCreatedAt() => _createdAt != null;

  // "outfitname" field.
  String? _outfitname;
  String get outfitname => _outfitname ?? '';
  bool hasOutfitname() => _outfitname != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _imageUrl = snapshotData['image_url'] as String?;
    _createdAt = snapshotData['created_at'] as String?;
    _outfitname = snapshotData['outfitname'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('mixnmatchoutfits')
          : FirebaseFirestore.instance.collectionGroup('mixnmatchoutfits');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('mixnmatchoutfits').doc(id);

  static Stream<MixnmatchoutfitsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MixnmatchoutfitsRecord.fromSnapshot(s));

  static Future<MixnmatchoutfitsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MixnmatchoutfitsRecord.fromSnapshot(s));

  static MixnmatchoutfitsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MixnmatchoutfitsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MixnmatchoutfitsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MixnmatchoutfitsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MixnmatchoutfitsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MixnmatchoutfitsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMixnmatchoutfitsRecordData({
  String? userId,
  String? imageUrl,
  String? createdAt,
  String? outfitname,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'image_url': imageUrl,
      'created_at': createdAt,
      'outfitname': outfitname,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class MixnmatchoutfitsRecordDocumentEquality
    implements Equality<MixnmatchoutfitsRecord> {
  const MixnmatchoutfitsRecordDocumentEquality();

  @override
  bool equals(MixnmatchoutfitsRecord? e1, MixnmatchoutfitsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.createdAt == e2?.createdAt &&
        e1?.outfitname == e2?.outfitname &&
        e1?.description == e2?.description;
  }

  @override
  int hash(MixnmatchoutfitsRecord? e) => const ListEquality().hash(
      [e?.userId, e?.imageUrl, e?.createdAt, e?.outfitname, e?.description]);

  @override
  bool isValidKey(Object? o) => o is MixnmatchoutfitsRecord;
}
