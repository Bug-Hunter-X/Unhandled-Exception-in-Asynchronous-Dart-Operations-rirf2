```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = jsonDecode(response.body);
    } else {
      // Handle the error
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions during the process
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled higher up the call stack
  }
}
```