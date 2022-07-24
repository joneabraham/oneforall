// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuctionRecord> _$auctionRecordSerializer =
    new _$AuctionRecordSerializer();

class _$AuctionRecordSerializer implements StructuredSerializer<AuctionRecord> {
  @override
  final Iterable<Type> types = const [AuctionRecord, _$AuctionRecord];
  @override
  final String wireName = 'AuctionRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AuctionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.auctionImg;
    if (value != null) {
      result
        ..add('auction_img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.auctionName;
    if (value != null) {
      result
        ..add('auction_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.auctionPrice;
    if (value != null) {
      result
        ..add('auction_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.auctionDesc;
    if (value != null) {
      result
        ..add('auction_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  AuctionRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuctionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'auction_img':
          result.auctionImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'auction_name':
          result.auctionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'auction_price':
          result.auctionPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'auction_desc':
          result.auctionDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$AuctionRecord extends AuctionRecord {
  @override
  final String auctionImg;
  @override
  final String auctionName;
  @override
  final int auctionPrice;
  @override
  final String auctionDesc;
  @override
  final DocumentReference<Object> reference;

  factory _$AuctionRecord([void Function(AuctionRecordBuilder) updates]) =>
      (new AuctionRecordBuilder()..update(updates)).build();

  _$AuctionRecord._(
      {this.auctionImg,
      this.auctionName,
      this.auctionPrice,
      this.auctionDesc,
      this.reference})
      : super._();

  @override
  AuctionRecord rebuild(void Function(AuctionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuctionRecordBuilder toBuilder() => new AuctionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuctionRecord &&
        auctionImg == other.auctionImg &&
        auctionName == other.auctionName &&
        auctionPrice == other.auctionPrice &&
        auctionDesc == other.auctionDesc &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, auctionImg.hashCode), auctionName.hashCode),
                auctionPrice.hashCode),
            auctionDesc.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuctionRecord')
          ..add('auctionImg', auctionImg)
          ..add('auctionName', auctionName)
          ..add('auctionPrice', auctionPrice)
          ..add('auctionDesc', auctionDesc)
          ..add('reference', reference))
        .toString();
  }
}

class AuctionRecordBuilder
    implements Builder<AuctionRecord, AuctionRecordBuilder> {
  _$AuctionRecord _$v;

  String _auctionImg;
  String get auctionImg => _$this._auctionImg;
  set auctionImg(String auctionImg) => _$this._auctionImg = auctionImg;

  String _auctionName;
  String get auctionName => _$this._auctionName;
  set auctionName(String auctionName) => _$this._auctionName = auctionName;

  int _auctionPrice;
  int get auctionPrice => _$this._auctionPrice;
  set auctionPrice(int auctionPrice) => _$this._auctionPrice = auctionPrice;

  String _auctionDesc;
  String get auctionDesc => _$this._auctionDesc;
  set auctionDesc(String auctionDesc) => _$this._auctionDesc = auctionDesc;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AuctionRecordBuilder() {
    AuctionRecord._initializeBuilder(this);
  }

  AuctionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _auctionImg = $v.auctionImg;
      _auctionName = $v.auctionName;
      _auctionPrice = $v.auctionPrice;
      _auctionDesc = $v.auctionDesc;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuctionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuctionRecord;
  }

  @override
  void update(void Function(AuctionRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuctionRecord build() {
    final _$result = _$v ??
        new _$AuctionRecord._(
            auctionImg: auctionImg,
            auctionName: auctionName,
            auctionPrice: auctionPrice,
            auctionDesc: auctionDesc,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
