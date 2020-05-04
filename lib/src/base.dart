class URLParams {

  final Map<String, String> _values = {};

  /// toString concat the params using ? and & and returns [String]
  @override
  String toString() {
    var response = '';
    _values.forEach((key, value) {
      response += '$key=$value&';
    });
    return response.substring(0, response.isEmpty ? 0 : response.length - 1);
  }

  /// It can append the key, value pair and results param as uri
  void append(String key, dynamic value) {
    if (value != null && value.toString().isNotEmpty) {
      _values[key] = Uri.encodeQueryComponent(value.toString());
    }
  }

  /// Removes available key from the params
  void remove(String key) {
    _values.remove(key);
  }

  /// It create a complete url
  /// It accepts base [url] to concat to the params
  /// returns complete [url]
  String toUrl(String url) {
    if (url != null && url.isNotEmpty) {
      if (url.endsWith('/')) {
        final newURL = url.substring(0, url.length - 1);
        return '$newURL?${toString()}';
      }
    }
    return '$url?${toString()}';
  }
}
