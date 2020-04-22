import 'package:test/test.dart';
import 'package:url_params/src/base.dart';

void main() {
  group('A group of tests', () {
    final query = URLParams();
    test('encoded value', () {
      query.append('key', 'value');
      var result = query.toUrl('https://cdn.example.io');
      expect('https://cdn.example.io?key=value', result);
    });
  });
}
