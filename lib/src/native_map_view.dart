import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeMapView extends StatelessWidget {
  const NativeMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Native Map View'),
      ),
      body: const NativeMap(),
    );
  }
}



class NativeMap extends StatelessWidget {
  const NativeMap({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const UiKitView(
        viewType: 'MapView',
        creationParamsCodec: StandardMessageCodec(),
      );
    } else {
      return const Text('Unsupported platform');
    }
  }
}
