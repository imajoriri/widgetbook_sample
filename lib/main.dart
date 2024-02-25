import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        DeviceFrameAddon(devices: Devices.ios.all),
        AlignmentAddon(
          initialAlignment: Alignment.center,
        ),
        TextScaleAddon(
          scales: [1.0, 1.2, 1.4, 1.6, 1.8, 2.0],
        ),
        InspectorAddon(enabled: true),
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: ThemeData.light(),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: ThemeData.dark(),
            ),
          ],
          initialTheme: WidgetbookTheme(
            name: 'Light',
            data: ThemeData.light(),
          ),
        ),
      ],
      integrations: [
        WidgetbookCloudIntegration(),
      ],
    );
  }
}
