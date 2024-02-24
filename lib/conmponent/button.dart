import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'FilledButton',
  type: FilledButton,
)
Widget filledButtonUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        FilledButton(
          onPressed: () {},
          child: const Text('Enabled'),
        ),
        const SizedBox(height: 16),
        const FilledButton(
          onPressed: null,
          child: Text('Disabled'),
        ),
      ],
    ),
  );
}
