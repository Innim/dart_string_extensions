import 'dart:math';

/// Extension methods for a [String].
extension StringExtensions<E> on String {
  // Common

  // Common - Equality

  /// Returns `true` if this string is `null` or empty.
  bool get isNullOrEmpty {
    return this == null || isEmpty;
  }

  /// Returns `true` if this string is not `null` and not empty.
  bool get isNotNullNorEmpty {
    return this != null && isNotEmpty;
  }

  // Modification

  // Modification - Case

  /// Converts first character in this string to upper case.
  ///
  /// If the first character of the string is already in upper case,
  /// this method returns `this`.
  ///
  /// Example:
  /// ```
  /// 'alphabet'.firstToUpper(); // 'Alphabet'
  /// 'ABC'.firstToUpper();      // 'ABC
  /// ```
  ///
  /// This function uses `toUpperCase()`, that uses
  /// the language independent Unicode mapping and thus only
  /// works in some languages.
  String firstToUpper() => (this?.isNotEmpty ?? false)
      ? '${this[0].toUpperCase()}${substring(1)}'
      : this;

  /// Converts first character in this string to lower case.
  ///
  /// If the first character of the string is already in lower case,
  /// this method returns `this`.
  ///
  /// Example:
  /// ```
  /// 'Alphabet'.firstToLower(); // 'alphabet'
  /// 'ABC'.firstToLower();      // 'aBC'
  /// 'abc'.firstToLower();      // 'abc'
  /// ```
  ///
  /// This function uses `toLowerCase()`, that uses
  /// the language independent Unicode mapping and thus only
  /// works in some languages.
  String firstToLower() => (this?.isNotEmpty ?? false)
      ? '${this[0].toLowerCase()}${substring(1)}'
      : this;

  // Transformation

  // Transformation - to Interable

  /// Splits string by chunks with specified [size].
  ///
  /// If string is empty than empty [Intarbale] will be returned.
  ///
  /// If [size] less or equal 0, that [ArgumentError] will be raised.
  Iterable<String> chunks(int size) sync* {
    if (isEmpty) return;

    if (size <= 0) {
      throw ArgumentError.value(size, 'size', 'Should be more than zero');
    }

    final total = length;
    if (total <= size) {
      yield this;
    } else {
      var start = 0;
      do {
        final end = start + size;
        yield substring(start, min(end, total));
        start = end;
      } while (start < total);
    }
  }
}
