// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// The constant below is in its own library so that the test exemption bot knows
// that changing a pin does not require a new test. These pins are already
// tested as part of the analysis shard.

// Pub packages are rolled automatically by the flutter-pub-roller-bot.
// For the latest status, see:
//   https://github.com/pulls?q=author%3Aflutter-pub-roller-bot

/// Map from package name to package version, used to artificially pin a pub
/// package version in cases when upgrading to the latest breaks Flutter.
///
/// These version pins must be pins, not ranges! Allowing these to be ranges
/// defeats the whole purpose of pinning all our dependencies, which is to
/// prevent upstream changes from causing our CI to fail randomly in ways
/// unrelated to the commits. It also, more importantly, risks breaking users
/// in ways that prevent them from ever upgrading Flutter again!
const kManuallyPinnedDependencies = <String, String>{
  // Add pinned packages here. Please leave a comment explaining why.
  'archive': '3.6.1', // https://github.com/flutter/flutter/issues/115660
  'code_assets':
      '0.19.4', // Under active development with breaking changes until 1.0.0. Manually rolled by @dcharkes.
  'dds':
      '5.0.3', // 5.0.4 contains bugs described in https://github.com/Dart-Code/Dart-Code/issues/4678.
  'flutter_gallery_assets': '1.0.2', // Tests depend on the exact version.
  'flutter_template_images': '5.0.0', // Must always exactly match flutter_tools template.
  'google_mobile_ads': '5.1.0', // https://github.com/flutter/flutter/issues/156912
  'hooks':
      '0.19.5', // Under active development with breaking changes until 1.0.0. Manually rolled by @dcharkes.
  'hooks_runner':
      '0.21.0', // Under active development with breaking changes until 1.0.0. Manually rolled by @dcharkes.
  'material_color_utilities': '0.11.1', // Keep pinned to latest until 1.0.0.
};

/// These are packages that are explicitly excluded from appearing in the list
/// of pinned packages added to each pubspec.yaml.
const kExplicitlyExcludedPackages = <String>[
  '_macros', // Synthetic dependency for macros package, which isn't published.
  // This is effectively pinned via the Dart SDK pin, see
  // https://github.com/flutter/flutter/issues/148004 for more context.
  'macros',
];
