/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/categories_enabled.png
  AssetGenImage get categoriesEnabled =>
      const AssetGenImage('assets/icons/categories_enabled.png');

  /// File path: assets/icons/categories_focused.png
  AssetGenImage get categoriesFocused =>
      const AssetGenImage('assets/icons/categories_focused.png');

  /// File path: assets/icons/crown.png
  AssetGenImage get crown => const AssetGenImage('assets/icons/crown.png');

  /// File path: assets/icons/emptyIcon.png
  AssetGenImage get emptyIcon =>
      const AssetGenImage('assets/icons/emptyIcon.png');

  /// File path: assets/icons/feilledProfile.png
  AssetGenImage get feilledProfile =>
      const AssetGenImage('assets/icons/feilledProfile.png');

  /// File path: assets/icons/fire.png
  AssetGenImage get fire => const AssetGenImage('assets/icons/fire.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/home_enabled.png
  AssetGenImage get homeEnabled =>
      const AssetGenImage('assets/icons/home_enabled.png');

  /// File path: assets/icons/home_focused.png
  AssetGenImage get homeFocused =>
      const AssetGenImage('assets/icons/home_focused.png');

  /// File path: assets/icons/profile_enabled.png
  AssetGenImage get profileEnabled =>
      const AssetGenImage('assets/icons/profile_enabled.png');

  /// File path: assets/icons/profile_focused.png
  AssetGenImage get profileFocused =>
      const AssetGenImage('assets/icons/profile_focused.png');

  /// File path: assets/icons/ring.png
  AssetGenImage get ring => const AssetGenImage('assets/icons/ring.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/icons/settings.png');

  /// File path: assets/icons/shopping_enabled.png
  AssetGenImage get shoppingEnabled =>
      const AssetGenImage('assets/icons/shopping_enabled.png');

  /// File path: assets/icons/shopping_focused.png
  AssetGenImage get shoppingFocused =>
      const AssetGenImage('assets/icons/shopping_focused.png');

  /// File path: assets/icons/star.png
  AssetGenImage get star => const AssetGenImage('assets/icons/star.png');

  /// File path: assets/icons/timer.png
  AssetGenImage get timer => const AssetGenImage('assets/icons/timer.png');

  /// File path: assets/icons/user_profile.png
  AssetGenImage get userProfile =>
      const AssetGenImage('assets/icons/user_profile.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    categoriesEnabled,
    categoriesFocused,
    crown,
    emptyIcon,
    feilledProfile,
    fire,
    google,
    homeEnabled,
    homeFocused,
    profileEnabled,
    profileFocused,
    ring,
    search,
    settings,
    shoppingEnabled,
    shoppingFocused,
    star,
    timer,
    userProfile,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/breakfast.png
  AssetGenImage get breakfast =>
      const AssetGenImage('assets/images/breakfast.png');

  /// File path: assets/images/chef_login.png
  AssetGenImage get chefLogin =>
      const AssetGenImage('assets/images/chef_login.png');

  /// File path: assets/images/empty.png
  AssetGenImage get empty => const AssetGenImage('assets/images/empty.png');

  /// File path: assets/images/food.png
  AssetGenImage get food => const AssetGenImage('assets/images/food.png');

  /// File path: assets/images/lunch.png
  AssetGenImage get lunch => const AssetGenImage('assets/images/lunch.png');

  /// File path: assets/images/salad.png
  AssetGenImage get salad => const AssetGenImage('assets/images/salad.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    breakfast,
    chefLogin,
    empty,
    food,
    lunch,
    salad,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
