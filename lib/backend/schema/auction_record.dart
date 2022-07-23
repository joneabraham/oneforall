import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'auction_record.g.dart';

abstract class AuctionRecord
    implements Built<AuctionRecord, AuctionRecordBuilder> {
  static Serializer<AuctionRecord> get serializer => _$auctionRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'time_begin')
  DateTime get timeBegin;

  @nullable
  @BuiltValueField(wireName: 'time_end')
  DateTime get timeEnd;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AuctionRecordBuilder builder) => builder;

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
  DateTime timeBegin,
  DateTime timeEnd,
}) =>
    serializers.toFirestore(
        AuctionRecord.serializer,
        AuctionRecord((a) => a
          ..timeBegin = timeBegin
          ..timeEnd = timeEnd));
