// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'used_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsedRecord> _$usedRecordSerializer = new _$UsedRecordSerializer();

class _$UsedRecordSerializer implements StructuredSerializer<UsedRecord> {
  @override
  final Iterable<Type> types = const [UsedRecord, _$UsedRecord];
  @override
  final String wireName = 'UsedRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsedRecord object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.phno;
    if (value != null) {
      result
        ..add('phno')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
  UsedRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsedRecordBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'phno':
          result.phno = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
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

class _$UsedRecord extends UsedRecord {
  @override
  final String img;
  @override
  final String name;
  @override
  final String desc;
  @override
  final int price;
  @override
  final int phno;
  @override
  final DocumentReference<Object> uid;
  @override
  final DocumentReference<Object> reference;

  factory _$UsedRecord([void Function(UsedRecordBuilder) updates]) =>
      (new UsedRecordBuilder()..update(updates)).build();

  _$UsedRecord._(
      {this.img,
      this.name,
      this.desc,
      this.price,
      this.phno,
      this.uid,
      this.reference})
      : super._();

  @override
  UsedRecord rebuild(void Function(UsedRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsedRecordBuilder toBuilder() => new UsedRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsedRecord &&
        img == other.img &&
        name == other.name &&
        desc == other.desc &&
        price == other.price &&
        phno == other.phno &&
        uid == other.uid &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, img.hashCode), name.hashCode),
                        desc.hashCode),
                    price.hashCode),
                phno.hashCode),
            uid.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsedRecord')
          ..add('img', img)
          ..add('name', name)
          ..add('desc', desc)
          ..add('price', price)
          ..add('phno', phno)
          ..add('uid', uid)
          ..add('reference', reference))
        .toString();
  }
}

class UsedRecordBuilder implements Builder<UsedRecord, UsedRecordBuilder> {
  _$UsedRecord _$v;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  int _phno;
  int get phno => _$this._phno;
  set phno(int phno) => _$this._phno = phno;

  DocumentReference<Object> _uid;
  DocumentReference<Object> get uid => _$this._uid;
  set uid(DocumentReference<Object> uid) => _$this._uid = uid;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsedRecordBuilder() {
    UsedRecord._initializeBuilder(this);
  }

  UsedRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _img = $v.img;
      _name = $v.name;
      _desc = $v.desc;
      _price = $v.price;
      _phno = $v.phno;
      _uid = $v.uid;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsedRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsedRecord;
  }

  @override
  void update(void Function(UsedRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsedRecord build() {
    final _$result = _$v ??
        new _$UsedRecord._(
            img: img,
            name: name,
            desc: desc,
            price: price,
            phno: phno,
            uid: uid,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
