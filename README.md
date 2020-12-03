# string_ext

[![pub package](https://img.shields.io/pub/v/string_ext)](https://pub.dartlang.org/packages/string_ext)
![Dart CI](https://github.com/Innim/dart_string_extensions/workflows/Dart%20CI/badge.svg?branch=main)

Dart extension methods for a `String`.

## Usage

To use this plugin, add `string_ext` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

Than add `import 'package:string_ext/string_ext.dart';` to the file for use extension methods.

### Example

``` dart
import 'package:string_ext/string_ext.dart';

void main() {
  final foo = 'john';
  final bar = foo.firstToUpper();
  print('Name: $bar');
  // Output: Name: John
}
```

## Methods classifier

### Common

#### Equality

* `isNullOrEmpty`/`isNotNullNorEmpty` - check for a `null` or empty.

### Transformation

#### Case 

* `firstToUpper()` - converts first character in the string to upper case.
