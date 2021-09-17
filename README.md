# Simple Stream

## Example

```dart
// Create a SimpleStream object
var tv = SimpleStream<String>();

// listen to Object
var subscription = tv.listen((arg) {
    print(`I am watching $videoTitle`);
}

// emit a String
tv.emit('BBC news');

// inside dispose function cancle your subscription
subscription.cancle();
```
