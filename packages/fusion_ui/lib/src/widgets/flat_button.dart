import 'package:flutter/material.dart';

/// {@template FuseFlatButton}
/// A Fusion UI Primary Button.
///
/// ```dart
/// FuseFlatButton(
///   child: Text('Button'),
///   onPressed: () {
///     print('Tapped!');
///   },
/// )
/// ```
/// {@endtemplate}
class FuseFlatButton extends StatelessWidget {
  /// {@macro LBButton}
  const FuseFlatButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  /// The child widget of the [FuseFlatButton]
  final Widget child;

  /// This is the callback that is called when
  /// the button is pressed.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return Colors.black;
          },
        ),
        elevation: MaterialStateProperty.resolveWith<double>(
          (Set<MaterialState> states) {
            return 0;
          },
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
