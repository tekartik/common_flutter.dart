# tekartik_lints_flutter

The tekartik analysis options for Flutter apps and packages: [flutter_lints](https://pub.dev/packages/flutter_lints)
plus the tekartik rules (`strict-casts`, `unawaited_futures`, `prefer_single_quotes`, `directives_ordering`...).
For a pure Dart package use [tekartik_lints](https://github.com/tekartik/common.dart/tree/main/packages/lints)
instead.

## Getting started

Not on pub.dev: add it from git as a dev dependency in `pubspec.yaml`:

```yaml
dev_dependencies:
  tekartik_lints_flutter:
    git:
      url: https://github.com/tekartik/common_flutter.dart
      path: packages/lints_flutter
    version: '>=0.2.0'
```

Then include one of its rule sets in `analysis_options.yaml`, for example:

```yaml
include: package:tekartik_lints_flutter/strict.yaml
```

## Rule sets

| Include | Adds |
|---|---|
| `package:tekartik_lints_flutter/recommended.yaml` | `flutter_lints` + the tekartik rules, `strict-casts`, platform folders (`android/`, `ios/`, `web/`...) and `build/` excluded |
| `package:tekartik_lints_flutter/strict.yaml` | recommended + `strict-inference` (the usual choice for an app) |
| `package:tekartik_lints_flutter/package.yaml` | strict + `public_member_api_docs` (for a package used by others) |

Rules can be added or turned off in your own `analysis_options.yaml` after the `include:`, as with any analysis options
file.
