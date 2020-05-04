import 'package:url_params/params.dart';

void main() {
  var query =  URLParams();
  query.append('key', 'value');
  var result = query.toUrl('https://cdn.example.io');
  print(result);
}
