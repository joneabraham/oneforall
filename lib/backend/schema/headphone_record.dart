import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'headphone_record.g.dart';

abstract class HeadphoneRecord
    implements Built<HeadphoneRecord, HeadphoneRecordBuilder> {
  static Serializer<HeadphoneRecord> get serializer =>
      _$headphoneRecordSerializer;

  @nullable
  String get productname;

  @nullable
  @BuiltValueField(wireName: 'product_image')
  String get productImage;

  @nullable
  @BuiltValueField(wireName: 'product_desc')
  String get productDesc;

  @nullable
  @BuiltValueField(wireName: 'product_price')
  int get productPrice;

  @nullable
  @BuiltValueField(wireName: 'org_price')
  int get orgPrice;

  @nullable
  String get discount;

  @nullable
  int get pid;

  @nullable
  int get rating;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HeadphoneRecordBuilder builder) => builder
    ..productname = ''
    ..productImage = ''
    ..productDesc = ''
    ..productPrice = 0
    ..orgPrice = 0
    ..discount = ''
    ..pid = 0
    ..rating = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('headphone');

  static Stream<HeadphoneRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HeadphoneRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HeadphoneRecord._();
  factory HeadphoneRecord([void Function(HeadphoneRecordBuilder) updates]) =
      _$HeadphoneRecord;

  static HeadphoneRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHeadphoneRecordData({
  String productname,
  String productImage,
  String productDesc,
  int productPrice,
  int orgPrice,
  String discount,
  int pid,
  int rating,
}) =>
    serializers.toFirestore(
        HeadphoneRecord.serializer,
        HeadphoneRecord((h) => h
          ..productname = productname
          ..productImage = productImage
          ..productDesc = productDesc
          ..productPrice = productPrice
          ..orgPrice = orgPrice
          ..discount = discount
          ..pid = pid
          ..rating = rating));
