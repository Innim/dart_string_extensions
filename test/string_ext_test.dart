import 'package:test/test.dart';
import 'package:string_ext/string_ext.dart';

void main() {
  group('Common', () {
    group('Equality', () {
      group('isNullOrEmpty/isNotNullOrEmpty', () {
        test('null string', () {
          String? foo;

          expect(foo.isNullOrEmpty, true);
          expect(foo.isNotNullNorEmpty, false);
        });

        test('empty string', () {
          const foo = '';

          expect(foo.isNullOrEmpty, true);
          expect(foo.isNotNullNorEmpty, false);
        });

        test('not empty iterable', () {
          const foo = 'some';

          expect(foo.isNullOrEmpty, false);
          expect(foo.isNotNullNorEmpty, true);
        });
      });
    });
  });

  group('Modification', () {
    group('Case', () {
      group('firstToUpper()', () {
        test('should transform first character to upper', () {
          expect('alphabet'.firstToUpper(), 'Alphabet');
        });

        test('should not transform string if first character already in upper',
            () {
          expect('ABC'.firstToUpper(), 'ABC');
        });

        test('should not transform empty string', () {
          expect(''.firstToUpper(), '');
        });

        test('should transform string with only 1 character', () {
          expect('a'.firstToUpper(), 'A');
        });
      });

      group('firstToLower()', () {
        test('should transform first character to lower', () {
          expect('Alphabet'.firstToLower(), 'alphabet');
        });

        test('should transform only first character to lower', () {
          expect('ABC'.firstToLower(), 'aBC');
        });

        test('should not transform string if first character already in lower',
            () {
          expect('abc'.firstToLower(), 'abc');
        });

        test('should not transform empty string', () {
          expect(''.firstToLower(), '');
        });

        test('should transform string with only 1 character', () {
          expect('A'.firstToLower(), 'a');
        });
      });
    });
  });

  group('Transformation', () {
    group('Interable', () {
      group('chunks()', () {
        test('should return single element if size less than original length',
            () {
          final res = 'alphabet'.chunks(10);
          expect(res, ['alphabet']);
        });

        test('should return single element if size equals original length', () {
          final res = 'alphabet'.chunks(8);
          expect(res, ['alphabet']);
        });

        group('should return chunks if size more than original length', () {
          test('2 chunks', () {
            final res = 'alphabet'.chunks(7);
            expect(res, ['alphabe', 't']);
          });

          test('3 chunks', () {
            final res = 'alphabet'.chunks(3);
            expect(res, ['alp', 'hab', 'et']);
          });

          test('4 chunks', () {
            final res = 'alphabet'.chunks(2);
            expect(res, ['al', 'ph', 'ab', 'et']);
          });

          test('8 chunks', () {
            final res = 'alphabet'.chunks(1);
            expect(res, ['a', 'l', 'p', 'h', 'a', 'b', 'e', 't']);
          });
        });

        test('should return empty intarable if string is empty', () {
          final res = ''.chunks(10);
          expect(res, <String>[]);
        });

        test('should throw ArgumentError if size is zero', () {
          expect(
            () => 'alphabet'.chunks(0),
            throwsA(const TypeMatcher<ArgumentError>()),
          );
        });

        test('should throw ArgumentError if size less than zero', () {
          expect(
            () => 'alphabet'.chunks(-2),
            throwsA(const TypeMatcher<ArgumentError>()),
          );
        });
      });
    });
  });
}
