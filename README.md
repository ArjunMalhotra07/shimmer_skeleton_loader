<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A Flutter package that provides a skeleton loading effect for Flutter applications.

## Features

- Display skeleton loading effect while fetching data or loading content.
- Customizable shimmer animation for containers.

<img src="assets/skeleton_loader_widget.gif" alt="Skeleton Loading Widget" style="width:400px ;height:400px ;">

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  shimmer_skeleton_loader: ^1.0.0
```

## Usage

- Import the package into your Dart file:

```dart
import 'package:shimmer_skeleton_loader/shimmer_skeleton_loader.dart';
```

```dart
SkeletonLoaderWidget(
  numberOfLoadingWidgets: 5,
)
```


