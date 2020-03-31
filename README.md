A library for Dart developers.

[license](https://github.com/ishaileshmishra/url_params/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:url_params/src/base.dart';

main() {
  var query = URLParams();
  query.append('key', 'value');
  var result = query.toUrl('https://cdn.example.io');
  print(result);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/ishaileshmishra/url_params/issues
