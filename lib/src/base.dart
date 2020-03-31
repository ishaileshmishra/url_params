class URLParams {
  final Map<String, String> _values = {};

  @override
  String toString() {
    var response = '';
    _values.forEach((key, value) {
      response += '$key=$value&';
    });
    return response.substring(0, response.isEmpty ? 0 : response.length - 1);
  }

  void append(String key, dynamic value) {
    if (value != null && value.toString().isNotEmpty) {
      _values[key] = Uri.encodeQueryComponent(value.toString());
    }
  }

  void remove(String key) {
    _values.remove(key);
  }

  String toUrl(String urls) {
    if (urls != null && urls.isNotEmpty) {
      if (urls.endsWith('/')) {
        urls.substring(0, urls.length - 1);
      }
    }
    return '$urls?${toString()}';
  }
}
