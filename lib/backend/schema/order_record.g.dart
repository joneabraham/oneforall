// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderRecord> _$orderRecordSerializer = new _$OrderRecordSerializer();

class _$OrderRecordSerializer implements StructuredSerializer<OrderRecord> {
  @override
  final Iterable<Type> types = const [OrderRecord, _$OrderRecord];
  @override
  final String wireName = 'OrderRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OrderRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.cartid;
    if (value != null) {
      result
        ..add('cartid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.contact;
    if (value != null) {
      result
        ..add('contact')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pin;
    if (value != null) {
      result
        ..add('pin')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.district;
    if (value != null) {
      result
        ..add('district')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address2;
    if (value != null) {
      result
        ..add('address2')
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
  OrderRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'userid':
          result.userid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'cartid':
          result.cartid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'contact':
          result.contact = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pin':
          result.pin = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'district':
          result.district = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address2':
          result.address2 = serializers.deserialize(value,
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

class _$OrderRecord extends OrderRecord {
  @override
  final DocumentReference<Object> userid;
  @override
  final DocumentReference<Object> cartid;
  @override
  final int contact;
  @override
  final String address;
  @override
  final int pin;
  @override
  final String state;
  @override
  final String district;
  @override
  final String address2;
  @override
  final DocumentReference<Object> reference;

  factory _$OrderRecord([void Function(OrderRecordBuilder) updates]) =>
      (new OrderRecordBuilder()..update(updates)).build();

  _$OrderRecord._(
      {this.userid,
      this.cartid,
      this.contact,
      this.address,
      this.pin,
      this.state,
      this.district,
      this.address2,
      this.reference})
      : super._();

  @override
  OrderRecord rebuild(void Function(OrderRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderRecordBuilder toBuilder() => new OrderRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderRecord &&
        userid == other.userid &&
        cartid == other.cartid &&
        contact == other.contact &&
        address == other.address &&
        pin == other.pin &&
        state == other.state &&
        district == other.district &&
        address2 == other.address2 &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, userid.hashCode), cartid.hashCode),
                                contact.hashCode),
                            address.hashCode),
                        pin.hashCode),
                    state.hashCode),
                district.hashCode),
            address2.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderRecord')
          ..add('userid', userid)
          ..add('cartid', cartid)
          ..add('contact', contact)
          ..add('address', address)
          ..add('pin', pin)
          ..add('state', state)
          ..add('district', district)
          ..add('address2', address2)
          ..add('reference', reference))
        .toString();
  }
}

class OrderRecordBuilder implements Builder<OrderRecord, OrderRecordBuilder> {
  _$OrderRecord _$v;

  DocumentReference<Object> _userid;
  DocumentReference<Object> get userid => _$this._userid;
  set userid(DocumentReference<Object> userid) => _$this._userid = userid;

  DocumentReference<Object> _cartid;
  DocumentReference<Object> get cartid => _$this._cartid;
  set cartid(DocumentReference<Object> cartid) => _$this._cartid = cartid;

  int _contact;
  int get contact => _$this._contact;
  set contact(int contact) => _$this._contact = contact;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  int _pin;
  int get pin => _$this._pin;
  set pin(int pin) => _$this._pin = pin;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _district;
  String get district => _$this._district;
  set district(String district) => _$this._district = district;

  String _address2;
  String get address2 => _$this._address2;
  set address2(String address2) => _$this._address2 = address2;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OrderRecordBuilder() {
    OrderRecord._initializeBuilder(this);
  }

  OrderRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userid = $v.userid;
      _cartid = $v.cartid;
      _contact = $v.contact;
      _address = $v.address;
      _pin = $v.pin;
      _state = $v.state;
      _district = $v.district;
      _address2 = $v.address2;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderRecord;
  }

  @override
  void update(void Function(OrderRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderRecord build() {
    final _$result = _$v ??
        new _$OrderRecord._(
            userid: userid,
            cartid: cartid,
            contact: contact,
            address: address,
            pin: pin,
            state: state,
            district: district,
            address2: address2,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
