// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'others_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OthersRecord> _$othersRecordSerializer =
    new _$OthersRecordSerializer();

class _$OthersRecordSerializer implements StructuredSerializer<OthersRecord> {
  @override
  final Iterable<Type> types = const [OthersRecord, _$OthersRecord];
  @override
  final String wireName = 'OthersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, OthersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.productname;
    if (value != null) {
      result
        ..add('productname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productImage;
    if (value != null) {
      result
        ..add('product_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productDesc;
    if (value != null) {
      result
        ..add('product_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productPrice;
    if (value != null) {
      result
        ..add('product_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.orgPrice;
    if (value != null) {
      result
        ..add('org_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.discount;
    if (value != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pid;
    if (value != null) {
      result
        ..add('pid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  OthersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OthersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'productname':
          result.productname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_image':
          result.productImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_desc':
          result.productDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_price':
          result.productPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'org_price':
          result.orgPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pid':
          result.pid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$OthersRecord extends OthersRecord {
  @override
  final String productname;
  @override
  final String productImage;
  @override
  final String productDesc;
  @override
  final int productPrice;
  @override
  final int orgPrice;
  @override
  final String discount;
  @override
  final int pid;
  @override
  final int rating;
  @override
  final DocumentReference<Object> reference;

  factory _$OthersRecord([void Function(OthersRecordBuilder) updates]) =>
      (new OthersRecordBuilder()..update(updates)).build();

  _$OthersRecord._(
      {this.productname,
      this.productImage,
      this.productDesc,
      this.productPrice,
      this.orgPrice,
      this.discount,
      this.pid,
      this.rating,
      this.reference})
      : super._();

  @override
  OthersRecord rebuild(void Function(OthersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OthersRecordBuilder toBuilder() => new OthersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OthersRecord &&
        productname == other.productname &&
        productImage == other.productImage &&
        productDesc == other.productDesc &&
        productPrice == other.productPrice &&
        orgPrice == other.orgPrice &&
        discount == other.discount &&
        pid == other.pid &&
        rating == other.rating &&
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
                            $jc(
                                $jc($jc(0, productname.hashCode),
                                    productImage.hashCode),
                                productDesc.hashCode),
                            productPrice.hashCode),
                        orgPrice.hashCode),
                    discount.hashCode),
                pid.hashCode),
            rating.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OthersRecord')
          ..add('productname', productname)
          ..add('productImage', productImage)
          ..add('productDesc', productDesc)
          ..add('productPrice', productPrice)
          ..add('orgPrice', orgPrice)
          ..add('discount', discount)
          ..add('pid', pid)
          ..add('rating', rating)
          ..add('reference', reference))
        .toString();
  }
}

class OthersRecordBuilder
    implements Builder<OthersRecord, OthersRecordBuilder> {
  _$OthersRecord _$v;

  String _productname;
  String get productname => _$this._productname;
  set productname(String productname) => _$this._productname = productname;

  String _productImage;
  String get productImage => _$this._productImage;
  set productImage(String productImage) => _$this._productImage = productImage;

  String _productDesc;
  String get productDesc => _$this._productDesc;
  set productDesc(String productDesc) => _$this._productDesc = productDesc;

  int _productPrice;
  int get productPrice => _$this._productPrice;
  set productPrice(int productPrice) => _$this._productPrice = productPrice;

  int _orgPrice;
  int get orgPrice => _$this._orgPrice;
  set orgPrice(int orgPrice) => _$this._orgPrice = orgPrice;

  String _discount;
  String get discount => _$this._discount;
  set discount(String discount) => _$this._discount = discount;

  int _pid;
  int get pid => _$this._pid;
  set pid(int pid) => _$this._pid = pid;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OthersRecordBuilder() {
    OthersRecord._initializeBuilder(this);
  }

  OthersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productname = $v.productname;
      _productImage = $v.productImage;
      _productDesc = $v.productDesc;
      _productPrice = $v.productPrice;
      _orgPrice = $v.orgPrice;
      _discount = $v.discount;
      _pid = $v.pid;
      _rating = $v.rating;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OthersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OthersRecord;
  }

  @override
  void update(void Function(OthersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OthersRecord build() {
    final _$result = _$v ??
        new _$OthersRecord._(
            productname: productname,
            productImage: productImage,
            productDesc: productDesc,
            productPrice: productPrice,
            orgPrice: orgPrice,
            discount: discount,
            pid: pid,
            rating: rating,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
