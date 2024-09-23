import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WardrobeRecord extends FirestoreRecord {
  WardrobeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  bool hasImageURL() => _imageURL != null;

  // "clothingname" field.
  String? _clothingname;
  String get clothingname => _clothingname ?? '';
  bool hasClothingname() => _clothingname != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _brand = snapshotData['brand'] as String?;
    _category = snapshotData['category'] as String?;
    _color = snapshotData['color'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _size = snapshotData['size'] as String?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _imageURL = snapshotData['imageURL'] as String?;
    _clothingname = snapshotData['clothingname'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('wardrobe')
          : FirebaseFirestore.instance.collectionGroup('wardrobe');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('wardrobe').doc(id);

  static Stream<WardrobeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WardrobeRecord.fromSnapshot(s));

  static Future<WardrobeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WardrobeRecord.fromSnapshot(s));

  static WardrobeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WardrobeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WardrobeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WardrobeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WardrobeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WardrobeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWardrobeRecordData({
  String? brand,
  String? category,
  String? color,
  DateTime? createdAt,
  String? description,
  String? size,
  DateTime? updatedAt,
  String? imageURL,
  String? clothingname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'brand': brand,
      'category': category,
      'color': color,
      'created_at': createdAt,
      'description': description,
      'size': size,
      'updated_at': updatedAt,
      'imageURL': imageURL,
      'clothingname': clothingname,
    }.withoutNulls,
  );

  return firestoreData;
}

class WardrobeRecordDocumentEquality implements Equality<WardrobeRecord> {
  const WardrobeRecordDocumentEquality();

  @override
  bool equals(WardrobeRecord? e1, WardrobeRecord? e2) {
    return e1?.brand == e2?.brand &&
        e1?.category == e2?.category &&
        e1?.color == e2?.color &&
        e1?.createdAt == e2?.createdAt &&
        e1?.description == e2?.description &&
        e1?.size == e2?.size &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.imageURL == e2?.imageURL &&
        e1?.clothingname == e2?.clothingname;
  }

  @override
  int hash(WardrobeRecord? e) => const ListEquality().hash([
        e?.brand,
        e?.category,
        e?.color,
        e?.createdAt,
        e?.description,
        e?.size,
        e?.updatedAt,
        e?.imageURL,
        e?.clothingname
      ]);

  @override
  bool isValidKey(Object? o) => o is WardrobeRecord;
}
