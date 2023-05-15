import 'package:test/test.dart';
import 'package:url_params/src/response_callback.dart';
import 'package:url_params/src/service.dart';

void main(List<String> args) {
  test('test get request', () {
    var service = Service(baseUrl: '', endpoint: '');

    //service.getRequest((response, err) => {});
    expect(
        'https://cdn.example.io?key=value&key1=value1&key3=value3', 'result');
  });
}
