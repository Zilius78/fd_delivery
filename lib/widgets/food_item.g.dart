// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FoodItemCWProxy {
  FoodItem caption(String caption);

  FoodItem description(String description);

  FoodItem image(String image);

  FoodItem key(Key? key);

  FoodItem name(String name);

  FoodItem onTap(void Function()? onTap);

  FoodItem price(String price);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FoodItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FoodItem(...).copyWith(id: 12, name: "My name")
  /// ````
  FoodItem call({
    String? caption,
    String? description,
    String? image,
    Key? key,
    String? name,
    void Function()? onTap,
    String? price,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFoodItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFoodItem.copyWith.fieldName(...)`
class _$FoodItemCWProxyImpl implements _$FoodItemCWProxy {
  final FoodItem _value;

  const _$FoodItemCWProxyImpl(this._value);

  @override
  FoodItem caption(String caption) => this(caption: caption);

  @override
  FoodItem description(String description) => this(description: description);

  @override
  FoodItem image(String image) => this(image: image);

  @override
  FoodItem key(Key? key) => this(key: key);

  @override
  FoodItem name(String name) => this(name: name);

  @override
  FoodItem onTap(void Function()? onTap) => this(onTap: onTap);

  @override
  FoodItem price(String price) => this(price: price);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FoodItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FoodItem(...).copyWith(id: 12, name: "My name")
  /// ````
  FoodItem call({
    Object? caption = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? image = const $CopyWithPlaceholder(),
    Object? key = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? onTap = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
  }) {
    return FoodItem(
      caption: caption == const $CopyWithPlaceholder() || caption == null
          ? _value.caption
          // ignore: cast_nullable_to_non_nullable
          : caption as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      image: image == const $CopyWithPlaceholder() || image == null
          ? _value.image
          // ignore: cast_nullable_to_non_nullable
          : image as String,
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as Key?,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      onTap: onTap == const $CopyWithPlaceholder()
          ? _value.onTap
          // ignore: cast_nullable_to_non_nullable
          : onTap as void Function()?,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as String,
    );
  }
}

extension $FoodItemCopyWith on FoodItem {
  /// Returns a callable class that can be used as follows: `instanceOfFoodItem.copyWith(...)` or like so:`instanceOfFoodItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FoodItemCWProxy get copyWith => _$FoodItemCWProxyImpl(this);
}
