import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:widgetbook_sample/conmponent/button.dart';

void main() {
  testGoldens('app', (WidgetTester tester) async {
    await loadAppFonts();
    //デバイスの画面サイズ
    const size = Size(415, 896);

    final testWidget = Builder(
      builder: (BuildContext context) {
        return filledButtonUseCase(context);
      },
    );

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(testWidget, surfaceSize: size);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'myApp');
  });
}
