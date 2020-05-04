A library for Dart/Flutter developers.

[license](https://github.com/ishaileshmishra/url_params/blob/master/LICENSE).

# url_param

![Coverage](https://github.com/ishaileshmishra/url_params/blob/master/coverage_badge.svg?sanitize=true)
![pub.dev](https://github.com/ishaileshmishra/url_params/workflows/Dart%20CI/badge.svg)
![GitHub issues](https://img.shields.io/github/issues/ishaileshmishra/url_params)
![GitHub forks](https://img.shields.io/github/forks/ishaileshmishra/url_params)
![GitHub stars](https://img.shields.io/github/stars/ishaileshmishra/url_params)
![GitHub license](https://img.shields.io/github/license/ishaileshmishra/url_params)
![Twitter](https://img.shields.io/twitter/url?url=https://www.twitter.com/ishailesmishra)

## use as following

Add this to your package's pubspec.yaml file under dependency:

    dependencies:
      url_param: ^1.0.2

## Install it

You can install packages from the command line:

with Flutter:

    flutter pub get

## Import it

Now in your Dart code, you can use:

    import 'package:params/url_params.dart';

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
