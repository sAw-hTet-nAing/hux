import 'package:flutter/material.dart';
import 'package:hux/hux.dart';

/// A widget that displays a label for a text field, with an optional asterisk if the field is required.
class HuxTextFieldLabel extends StatelessWidget {
  /// Creates a [HuxTextFieldLabel] widget.
  const HuxTextFieldLabel({super.key, this.value, required this.isRequired});

  /// The text to display as the label.
  final String? value;

  /// Whether the field is required. If true, an asterisk will be displayed next to the label.
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    if (value == null || value!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: value,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.labelMedium?.fontSize ?? 12,
              fontWeight: FontWeight.w300,
              color: HuxTokens.textSecondary(context),
            ),
          ),
          if (isRequired)
            TextSpan(
              text: ' *',
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.labelMedium?.fontSize ?? 12,
                  fontWeight: FontWeight.bold,
                  color: HuxColors.redLight),
            ),
        ],
      ),
    );
  }
}
