import 'package:flutter/material.dart';

class VariableContainer extends StatelessWidget {
  final List<Widget> children;
  final double? width;

  const VariableContainer({
    Key? key,
    this.children = const [],
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Container(
      width: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.dividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
