import 'package:flutter/material.dart';

/// {@template FuseTextField}
/// A Text field component that uses the material component [FuseTextField].
/// All the under laying props are available.
///
/// ```dart
/// FuseTextField()
/// ```
/// {@endtemplate}
class FuseTextField extends StatelessWidget {
  /// {@macro FuseTextField}
  const FuseTextField({
    super.key,
    required this.placeholder,
    required this.onChanged,
    required this.textEditingController,
  });

  /// The placeholder text to be displayed within
  /// the text field.
  final String placeholder;

  /// The onChanged value change notifier which is invoked when the text in
  /// the text field changes.
  final ValueChanged<String>? onChanged;

  /// The TextEditingController for the text field.
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: placeholder,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
