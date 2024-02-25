import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
    name: 'FilledButton',
    type: FilledButton,
    designLink:
        "https://www.figma.com/file/o1KbN9ssV8CS6kssIRQ5ne/Material-3-Design-Kit-(Community)?type=design&node-id=53923-27459&mode=design&t=RRp3PNhnvaVn5OwU-4")
Widget filledButtonUseCase(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 100),
    width: double.infinity,
    alignment: Alignment.center,
    child: Column(
      children: [
        FilledButton(
          onPressed: () {},
          child: const Text("Enabled"),
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
