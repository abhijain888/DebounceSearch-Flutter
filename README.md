# Debounce Search Flutter

Debouncing is a technique used to limit a function from getting called too frequently. For example, you can use debouncing to avoid repeatedly sending API calls to your server for search suggestions while the user type. You don’t want to send an API call for every letter the user type into the search box.

### Let's get into code:

1. To create a debouncer, let’s create a new class:
```
import 'dart:async';
import 'package:flutter/material.dart';class Debouncer {
   Debouncer({required this.milliseconds});   final int milliseconds;
   Timer? _timer;   void run(VoidCallback action) {
      if (_timer?.isActive ?? false) {
         _timer?.cancel();
      }
      _timer = Timer(Duration(milliseconds: milliseconds), action);
   }
}
```
2. After creating it, now we can use it in our widgets:
```
final debouncer = Debouncer(milliseconds: 500);debouncer.run(() {
   // put the code that you want to debounce
   // example: calling an API, adding a BLoC event
});
```

## Developers
MIT License

Copyright (c) 2019 TecOrb Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
