# tekartik_app_lints_flutter

Tekartik flutter lints

## Getting Started

### Setup

```yaml
dependencies:
  tekartik_lints_flutter:
    git:
      url: https://github.com/tekartik/common_flutter.dart
      path: packages/lints_flutter
    version: '>=0.1.0'
```

## Usage

In `analysis_options.yaml`:

```yaml
# tekartik flutter recommended lints (extension over google lints and pedantic)
include: package:tekartik_lints_flutter/recommended.yaml
```

Stricter
```yaml
# tekartik flutter recommended lints (extension over google lints and pedantic)
include: package:tekartik_lints_flutter/strict.yaml
```
