# url_param: A Library For Dart/Flutter Developers.


![Coverage](https://github.com/ishaileshmishra/url_params/blob/master/coverage_badge.svg?sanitize=true)
![pub.dev](https://github.com/ishaileshmishra/url_params/workflows/Dart%20CI/badge.svg)
![GitHub stars](https://img.shields.io/github/stars/ishaileshmishra/url_params)
![GitHub license](https://img.shields.io/github/license/ishaileshmishra/url_params)

## use as following

Add this to your package's pubspec.yaml file under dependency:

    dependencies:
      url_param: ^1.0.3

## Install it

You can install packages from the command line:

with Flutter:

    flutter pub get

## Import it

Now in your Dart code, you can use:

    import 'package:url_params/params.dart';

## Use it like below example

    void main() {
      var query =  URLParams();
      query.append('key', 'value');
      var result = query.toUrl('https://cdn.example.io');
      print(result);
    }

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].
[tracker]: https://github.com/ishaileshmishra/url_params/issues
