import 'package:flutter/material.dart';

class MarkTitle extends StatelessWidget {
  const MarkTitle({
    super.key,
    required this.markName,
  });

  final String markName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      title: Text(
        markName,
        style: theme.textTheme.bodyMedium,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/mark/car',
          arguments: markName,
        );
      },
    );
  }
}
