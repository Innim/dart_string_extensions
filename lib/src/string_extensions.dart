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
}
