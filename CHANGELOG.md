## 1.0.1

### Added
- Interactive showcase Flutter app in `example/main.dart` demonstrating all package utilities.

### Fixed
- Missing documentation comments for `MagicBooleanExtension`.

## 1.0.0

### Added
- Initial release of `lumu_evolve` containing core productivity extension engines.
- **MagicObject**: Scope functions and null-safety helpers on nullable objects:
  - `let`: Execute a block on the object if not null and return the result.
  - `also`: Execute a side-effect block on the object if not null and return the object itself.
  - `or`: Fluent fallback values for nullable types.
- **MagicBoolean**: Fluent conditional selectors on nullable booleans:
  - `when`: Map boolean states to values.
  - `pick`: Select between two lazy values based on boolean evaluation.
