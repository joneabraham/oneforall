import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'auction_record.g.dart';

abstract class AuctionRecord
    implements Built<AuctionRecord, AuctionRecordBuilder> {
  static Serializer<AuctionRecord> get serializer => _$auctionRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'auction_img')
  String get auctionImg;

  @nullable
  @BuiltValueField(wireName: 'auction_name')
  String get auctionName;

  @nullable
  @BuiltValueField(wireName: 'auction_price')
  int get auctionPrice;

  @nullable
  @BuiltValueField(wireName: 'auction_desc')
  String get auctionDesc;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AuctionRecordBuilder builder) => builder
    ..auctionImg = ''
    ..auctionName = ''
    ..auctionPrice = 0
    ..auctionDesc = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('auction');

  static Stream<AuctionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AuctionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AuctionRecord._();
  factory AuctionRecord([void Function(AuctionRecordBuilder) updates]) =
      _$AuctionRecord;

  static AuctionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAuctionRecordData({
  String auctionImg,
  String auctionName,
  int auctionPrice,
  String auctionDesc,
}) =>
    serializers.toFirestore(
        AuctionRecord.serializer,
        AuctionRecord((a) => a
          ..auctionImg = auctionImg
          ..auctionName = auctionName
          ..auctionPrice = auctionPrice
          ..auctionDesc = auctionDesc));
