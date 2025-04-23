import 'package:flutter/material.dart';

class AppEmptyComponent extends StatelessWidget {
  const AppEmptyComponent({
    super.key,
    required this.message,
    this.icon = Icons.inbox,
  });

  final String message;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 48, color: Theme.of(context).colorScheme.shadow),
          const SizedBox(height: 12),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.shadow,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
