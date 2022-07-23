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
    value = object.timeBegin;
    if (value != null) {
      result
        ..add('time_begin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.timeEnd;
    if (value != null) {
      result
        ..add('time_end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
        case 'time_begin':
          result.timeBegin = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'time_end':
          result.timeEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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
  final DateTime timeBegin;
  @override
  final DateTime timeEnd;
  @override
  final DocumentReference<Object> reference;

  factory _$AuctionRecord([void Function(AuctionRecordBuilder) updates]) =>
      (new AuctionRecordBuilder()..update(updates)).build();

  _$AuctionRecord._({this.timeBegin, this.timeEnd, this.reference}) : super._();

  @override
  AuctionRecord rebuild(void Function(AuctionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuctionRecordBuilder toBuilder() => new AuctionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuctionRecord &&
        timeBegin == other.timeBegin &&
        timeEnd == other.timeEnd &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, timeBegin.hashCode), timeEnd.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuctionRecord')
          ..add('timeBegin', timeBegin)
          ..add('timeEnd', timeEnd)
          ..add('reference', reference))
        .toString();
  }
}

class AuctionRecordBuilder
    implements Builder<AuctionRecord, AuctionRecordBuilder> {
  _$AuctionRecord _$v;

  DateTime _timeBegin;
  DateTime get timeBegin => _$this._timeBegin;
  set timeBegin(DateTime timeBegin) => _$this._timeBegin = timeBegin;

  DateTime _timeEnd;
  DateTime get timeEnd => _$this._timeEnd;
  set timeEnd(DateTime timeEnd) => _$this._timeEnd = timeEnd;

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
      _timeBegin = $v.timeBegin;
      _timeEnd = $v.timeEnd;
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
            timeBegin: timeBegin, timeEnd: timeEnd, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
