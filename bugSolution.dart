```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = jsonDecode(response.body);
    } else {
      // Handle the error more specifically by throwing a custom exception 
      throw HttpException('Failed to load data, status code: ${response.statusCode}');
    }
  } on HttpException catch (e) {
    // Handle HTTP exceptions specifically
    print('HTTP Error: ${e.message}');
    // Log or handle this error in a more sophisticated way
  } catch (e) {
    // Handle other exceptions
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled at a higher level 
  }
}

//Custom Exception class
class HttpException implements Exception {
  final String message;
  HttpException(this.message);
}
```