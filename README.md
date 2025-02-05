# KWin Dart

A Dart library for interacting with KDE's KWin window manager.

## Features

- Load and unload KWin scripts
- Check if scripts are loaded
- Listen to script output
- Interact with KWin's D-Bus interfaces
- Control window management features through KWin's API

## Prerequisites

- Linux running KDE Plasma with KWin window manager
- Tested on KDE Plasma 6
- D-Bus support
- Dart SDK >=3.5.4

## Installation

Currently only available from git.

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  kwin:
    git:
      url: https://github.com/Merrit/kwin-dart.git
      ref: main
```

I would consider adding it to pub.dev if there is enough interest.

## Usage

Basic usage example:

```dart
import 'package:kwin/kwin.dart';

void main() async {
  // Create KWin interface instance
  final kwin = KWin();

  // Load a KWin script
  await kwin.loadScript('/path/to/script.js', 'my-plugin');

  // Check if script is loaded
  final isLoaded = await kwin.isScriptLoaded('my-plugin');
  print('Script loaded: $isLoaded');

  // Listen to script output
  kwin.scriptOutput.listen((output) {
    print('Script output: $output');
  });

  // Clean up when done
  await kwin.dispose();
}
```

<!-- ## Advanced Usage

See the [API documentation](link-to-docs) for detailed information about available methods and features. -->

## Notes

- Script output listening requires KWin Scripting to be set to "Full Debug" mode
  due to a persistent bug in KWin
- Scripts cannot be reloaded, rather they must be unloaded first and then
  reloaded - this is a limitation of KWin's scripting API.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request or open an Issue.

## License

MIT
