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
    print('Timeout error in fetchData: $e');
    //Instead of rethrowing, handle the exception appropriately here.
  } on Exception catch (e) {
    print('Error in fetchData: $e');
    // Handle other exceptions here.
  } catch (e) {
    print('Unexpected error in fetchData: $e');
  }
}

void main() async {
  try {
    await fetchData();
  } on TimeoutException catch (e) {
    print('Main function handled Timeout: $e');
  } on Exception catch (e) {
    print('Main function handled other error: $e');
  } catch (e) {
    print('Main function handled unexpected error: $e');
  }
}
```