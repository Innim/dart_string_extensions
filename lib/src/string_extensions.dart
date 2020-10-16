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

  // Transformation

  // Transformation - Case

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
}
