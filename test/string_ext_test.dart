import 'package:test/test.dart';
import 'package:string_ext/string_ext.dart';

void main() {
  group('Common', () {
    group('Equality', () {
      group('isNullOrEmpty/isNotNullOrEmpty', () {
        test('null string', () {
          String foo;

          expect(foo.isNullOrEmpty, true);
          expect(foo.isNotNullNorEmpty, false);
        });

        test('empty string', () {
          final foo = '';

          expect(foo.isNullOrEmpty, true);
          expect(foo.isNotNullNorEmpty, false);
        });

        test('not empty iterable', () {
          final foo = 'some';

          expect(foo.isNullOrEmpty, false);
          expect(foo.isNotNullNorEmpty, true);
        });
      });
    });
  });
}
