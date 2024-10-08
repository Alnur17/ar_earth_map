import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/services.dart';

class ARViewWidget extends StatelessWidget {
  final String imagePath;

  const ARViewWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ArCoreView(
      onArCoreViewCreated: _onArCoreViewCreated,
      enableTapRecognizer: true,
    );
  }

  Future<void> _onArCoreViewCreated(ArCoreController controller) async {
    final ByteData earthTextureBytes = await rootBundle.load(imagePath);
    final node = ArCoreNode(
      image: ArCoreImage(
        bytes: earthTextureBytes.buffer.asUint8List(),
        width: 200,
        height: 200,
      ),
    );
    controller.addArCoreNode(node);
  }
}
