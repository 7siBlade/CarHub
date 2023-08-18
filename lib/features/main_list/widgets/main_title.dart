import 'package:flutter/material.dart';

class MainTile extends StatelessWidget {
  const MainTile({
    super.key,
    required this.carName,
  });

  final String carName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      title: Text(
        carName,
        style: theme.textTheme.bodyMedium,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/mark',
          arguments: carName,
        );
      },
    );
  }
}