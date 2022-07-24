import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_record.g.dart';

abstract class OrderRecord implements Built<OrderRecord, OrderRecordBuilder> {
  static Serializer<OrderRecord> get serializer => _$orderRecordSerializer;

  @nullable
  DocumentReference get userid;

  @nullable
  DocumentReference get cartid;

  @nullable
  int get contact;

  @nullable
  String get address;

  @nullable
  int get pin;

  @nullable
  String get state;

  @nullable
  String get district;

  @nullable
  String get address2;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrderRecordBuilder builder) => builder
    ..contact = 0
    ..address = ''
    ..pin = 0
    ..state = ''
    ..district = ''
    ..address2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrderRecord._();
  factory OrderRecord([void Function(OrderRecordBuilder) updates]) =
      _$OrderRecord;

  static OrderRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrderRecordData({
  DocumentReference userid,
  DocumentReference cartid,
  int contact,
  String address,
  int pin,
  String state,
  String district,
  String address2,
}) =>
    serializers.toFirestore(
        OrderRecord.serializer,
        OrderRecord((o) => o
          ..userid = userid
          ..cartid = cartid
          ..contact = contact
          ..address = address
          ..pin = pin
          ..state = state
          ..district = district
          ..address2 = address2));
