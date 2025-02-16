```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate a network request that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    if (/*some condition*/) {
      throw Exception('Failed to fetch data');
    } else {
      print('Data fetched successfully');
    }
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
    //Rethrow the exception to be handled by a higher level function
    rethrow; 
  } on Exception catch (e) {
    print('Error: $e');
    // Handle other exceptions here.
  } catch (e) {
    print('Unexpected error: $e');
  }
}

void main() async {
  try {
    await fetchData();
  } on TimeoutException catch (e) {
    print('Main function handled Timeout: $e');
  } catch (e) {
    print('Main function handled other error: $e');
  }
}
```