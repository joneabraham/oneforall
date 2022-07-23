import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'smartphone_record.g.dart';

abstract class SmartphoneRecord
    implements Built<SmartphoneRecord, SmartphoneRecordBuilder> {
  static Serializer<SmartphoneRecord> get serializer =>
      _$smartphoneRecordSerializer;

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

  static void _initializeBuilder(SmartphoneRecordBuilder builder) => builder
    ..productname = ''
    ..productImage = ''
    ..productDesc = ''
    ..productPrice = 0
    ..orgPrice = 0
    ..discount = ''
    ..pid = 0
    ..rating = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('smartphone');

  static Stream<SmartphoneRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SmartphoneRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SmartphoneRecord._();
  factory SmartphoneRecord([void Function(SmartphoneRecordBuilder) updates]) =
      _$SmartphoneRecord;

  static SmartphoneRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSmartphoneRecordData({
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
        SmartphoneRecord.serializer,
        SmartphoneRecord((s) => s
          ..productname = productname
          ..productImage = productImage
          ..productDesc = productDesc
          ..productPrice = productPrice
          ..orgPrice = orgPrice
          ..discount = discount
          ..pid = pid
          ..rating = rating));
