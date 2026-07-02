### Lumu Evolve

An elegant and fluent utility kit for Dart and Flutter, designed to streamline control flows, simplify responsive layouts, and enhance null safety.

By introducing readable, chainable, and functional scope functions, it empowers developers to write cleaner, more expressive code without nested ternaries or boilerplate layout logic.

<br>

#### Installation

Add the dependency to your project:

```bash
flutter pub add lumu_evolve
```


Import the package:

```dart
import 'package:lumu_evolve/lumu_evolve.dart';
```


<br>

#### Cleaner Control Flows

**Before**: Traditional Flutter code often relies on nested ternaries and verbose null checks for conditional styling and rendering:

```dart
Widget header(User? user, bool isCompact) {
  final name = user != null ? user.name : "Guest";
  
  return Container(
    color: isCompact ? Colors.blue : Colors.grey,
    child: isCompact 
      ? const Icon(Icons.phone_iphone) 
      : avatar(name),
  );
}
```


**After**: Using declarative extension methods, you can write linear, self-documenting code that is easier to maintain:

```dart
Widget header(User? user, bool isCompact) {
  final name = user?.name.or("Guest");
  
  return Container(
    color: isCompact.when(then: Colors.blue, pass: Colors.grey),
    child: isCompact.pick(
      match: () => const Icon(Icons.phone_iphone),
      otherwise: () => avatar(name),
    ),
  );
}
```
