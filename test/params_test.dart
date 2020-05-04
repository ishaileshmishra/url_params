import 'package:test/test.dart';
import 'package:url_params/url_params.dart';

void main() {
  group('A group of tests', () {
    final params = URLParams();

    test('encoded value', () {
      params.append('key', 'value');
      var result = params.toUrl('https://cdn.example.io');
      expect('https://cdn.example.io?key=value', result);
    });

    test('encoded value with remove key', () {
      params.append('key1', 'value1');
      params.append('key2', 'value2');
      params.append('key3', 'value3');
      params.remove('key2');
      var result = params.toUrl('https://cdn.example.io/');
      expect('https://cdn.example.io?key=value&key1=value1&key3=value3', result);
    });



    test('encoded value with forword slice', () {
      params.append('key1', 'value1');
      params.append('key2', 'value2');
      params.append('key3', 'value3');
      params.remove('key2');
      var result = params.toUrl('https://cdn.example.io/');
      expect('https://cdn.example.io?key=value&key1=value1&key3=value3', result);
    });


  });
}
