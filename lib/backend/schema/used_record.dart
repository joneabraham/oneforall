import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'used_record.g.dart';

abstract class UsedRecord implements Built<UsedRecord, UsedRecordBuilder> {
  static Serializer<UsedRecord> get serializer => _$usedRecordSerializer;

  @nullable
  String get img;

  @nullable
  String get name;

  @nullable
  String get desc;

  @nullable
  int get price;

  @nullable
  int get phno;

  @nullable
  DocumentReference get uid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsedRecordBuilder builder) => builder
    ..img = ''
    ..name = ''
    ..desc = ''
    ..price = 0
    ..phno = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('used');

  static Stream<UsedRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsedRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsedRecord._();
  factory UsedRecord([void Function(UsedRecordBuilder) updates]) = _$UsedRecord;

  static UsedRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsedRecordData({
  String img,
  String name,
  String desc,
  int price,
  int phno,
  DocumentReference uid,
}) =>
    serializers.toFirestore(
        UsedRecord.serializer,
        UsedRecord((u) => u
          ..img = img
          ..name = name
          ..desc = desc
          ..price = price
          ..phno = phno
          ..uid = uid));
