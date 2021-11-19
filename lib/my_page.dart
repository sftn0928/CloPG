import 'dart:typed_data';
import 'convert_widget_to_image_key.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';

return RepaintBoundary(
key: convertWidgetToImageKey,
child: WidgetA(), // 画像にしてシェアしたいWidget
);

class WidgetToImageConverter {
  Future<ByteData> exportToImage(GlobalKey globalKey) async {
    final boundary =
        globalKey.currentContext.findRenderObject() as RenderRepaintBoundary;
    final image = await boundary.toImage(
      pixelRatio: 3,
    );
    final byteData = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );
    return byteData;
  }
}

class ShareProvider {
  Future<void> shareImageAndText(String text, GlobalKey globalKey) async {
    final bytes = await WidgetToImageConverter().exportToImage(globalKey);
    await Share.file(
        'shared image', 'share.png', bytes.buffer.asUint8List(), 'image/png',
        text: text);
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "仮置き",
        home: Scaffold(
          body: Center(
            child: Center(
              child: Row(
                children: [
                  Container(),
                  IconButton(
                    onPressed: () {
                      ShareProvider()
                          .shareImageAndText('test', convertWidgekToImageKey);
                    },
                    icon: const Icon(
                      Icons.share,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
