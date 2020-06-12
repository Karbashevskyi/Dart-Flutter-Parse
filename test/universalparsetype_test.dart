import 'package:flutter_test/flutter_test.dart';

import 'package:universalparsetype/universalparsetype.dart';

void main() {
  test('adds one to input values', () {
    expect(Parse.universal(2), 3);
    expect(Parse.universal(-7), -6);
    expect(Parse.universal(0), 1);
    expect(() => Parse.universal(null), throwsNoSuchMethodError);
  });
}
