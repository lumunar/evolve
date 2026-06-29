# lumu_evolve

Evolve your Dart development with fluent scope functions, conditional selectors, and null-safety helpers. Designed for enterprise-grade applications, `lumu_evolve` minimizes nested ternaries and boilerplate, enabling clean, linear, and self-documenting codeflows.

---

## The Philosophy

Modern development demands code that is both highly performant and immediately readable. Dart provides powerful capabilities, but developers often run into nested blocks, verbose ternary expressions, and repetitive null checks. `lumu_evolve` introduces three core pillars:

1. **Fluent Codeflows**: Enable chaining and scoping operations directly on any object, keeping context localized and readable.
2. **Expressive Conditionals**: Replace verbose `if-else` and ternary blocks with elegant, functional selectors.
3. **Safe Type Evolution**: Provide clean, null-safe casting, type checking, and fallback mechanisms that work seamlessly with Dart's type system.

---

## Installation

Add `lumu_evolve` to your `pubspec.yaml`:

```bash
dart pub add lumu_evolve
# or for Flutter projects
flutter pub add lumu_evolve
```

Then, import the package in your Dart code:

```dart
import 'package:lumu_evolve/lumu_evolve.dart';
```

---

## Feature Showcases & Quick Examples

### 1. Scope & Helper Functions
Scope functions execute a block of code within the context of an object, returning either the computed result or the object itself.

#### `.let`
Executes the given block with the receiver as its argument if the receiver is not null, returning the block's result. Returns null if the receiver is null.
* **Signature**: `R? let<R>(R Function(T self) block)`
* **Example**:
  ```dart
  final formattedPrice = rawPrice.let((price) => "\$${price.toStringAsFixed(2)}") ?? "$0.00";
  ```

#### `.also`
Executes the given block with the receiver as its argument if the receiver is not null, returning the receiver itself. Ideal for side effects like logging, debugging, or caching.
* **Signature**: `T? also(void Function(T self) block)`
* **Example**:
  ```dart
  final user = User(id: '123', name: 'Alice')
    .also((u) => logger.info("Created user: ${u.name}"));
  ```

#### `.or`
Returns the receiver if it is not null, otherwise returns the fallback value.
* **Signature**: `T or(T fallback)`
* **Example**:
  ```dart
  final displayImage = user.profileUrl.or("assets/default_avatar.png");
  ```

---

### 2. Fluent Booleans
Eliminate inline ternaries with functional mapping and lazy selector tools on nullable booleans.

#### `.when`
Maps a nullable boolean state to one of two values depending on whether it is `true` or `false`/`null`.
* **Signature**: `T when<T>({required T then, required T pass})`
* **Example**:
  ```dart
  final statusColor = isActive.when(
    then: Colors.green,
    pass: Colors.red,
  );
  ```

#### `.pick`
Similar to `when`, but executes lazy computation functions to avoid evaluating both branches. Best for expensive operations or building widgets.
* **Signature**: `T pick<T>({required T Function() match, required T Function() otherwise})`
* **Example**:
  ```dart
  final widget = isLoaded.pick(
    match: () => DashboardView(),
    otherwise: () => ShimmerLoader(),
  );
  ```

---

## License

This project is licensed under the 3-Clause BSD License - see the [LICENSE](LICENSE) file for details.
