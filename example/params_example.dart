import 'package:params/src/base.dart';

void main() {
  var query =  URLParams();
  query.append('key', 'value');
  var result = query.toUrl('https://cdn.example.io');
  print(result);
}
