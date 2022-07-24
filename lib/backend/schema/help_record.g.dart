// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HelpRecord> _$helpRecordSerializer = new _$HelpRecordSerializer();

class _$HelpRecordSerializer implements StructuredSerializer<HelpRecord> {
  @override
  final Iterable<Type> types = const [HelpRecord, _$HelpRecord];
  @override
  final String wireName = 'HelpRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HelpRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desc;
    if (value != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  HelpRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HelpRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$HelpRecord extends HelpRecord {
  @override
  final String img;
  @override
  final String desc;
  @override
  final DocumentReference<Object> userid;
  @override
  final DocumentReference<Object> reference;

  factory _$HelpRecord([void Function(HelpRecordBuilder) updates]) =>
      (new HelpRecordBuilder()..update(updates)).build();

  _$HelpRecord._({this.img, this.desc, this.userid, this.reference})
      : super._();

  @override
  HelpRecord rebuild(void Function(HelpRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HelpRecordBuilder toBuilder() => new HelpRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HelpRecord &&
        img == other.img &&
        desc == other.desc &&
        userid == other.userid &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, img.hashCode), desc.hashCode), userid.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HelpRecord')
          ..add('img', img)
          ..add('desc', desc)
          ..add('userid', userid)
          ..add('reference', reference))
        .toString();
  }
}

class HelpRecordBuilder implements Builder<HelpRecord, HelpRecordBuilder> {
  _$HelpRecord _$v;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  DocumentReference<Object> _userid;
  DocumentReference<Object> get userid => _$this._userid;
  set userid(DocumentReference<Object> userid) => _$this._userid = userid;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HelpRecordBuilder() {
    HelpRecord._initializeBuilder(this);
  }

  HelpRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _img = $v.img;
      _desc = $v.desc;
      _userid = $v.userid;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HelpRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HelpRecord;
  }

  @override
  void update(void Function(HelpRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HelpRecord build() {
    final _$result = _$v ??
        new _$HelpRecord._(
            img: img, desc: desc, userid: userid, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
