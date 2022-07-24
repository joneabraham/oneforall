import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'help_record.g.dart';

abstract class HelpRecord implements Built<HelpRecord, HelpRecordBuilder> {
  static Serializer<HelpRecord> get serializer => _$helpRecordSerializer;

  @nullable
  String get img;

  @nullable
  String get desc;

  @nullable
  DocumentReference get userid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HelpRecordBuilder builder) => builder
    ..img = ''
    ..desc = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('help');

  static Stream<HelpRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HelpRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HelpRecord._();
  factory HelpRecord([void Function(HelpRecordBuilder) updates]) = _$HelpRecord;

  static HelpRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHelpRecordData({
  String img,
  String desc,
  DocumentReference userid,
}) =>
    serializers.toFirestore(
        HelpRecord.serializer,
        HelpRecord((h) => h
          ..img = img
          ..desc = desc
          ..userid = userid));
