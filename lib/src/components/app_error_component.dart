import 'package:flutter/material.dart';

class AppErrorComponent extends StatelessWidget {
  const AppErrorComponent({
    super.key,
    required this.message,
    required this.retryCtaTitle,
    required this.onRetry,
  });

  final String message;
  final String retryCtaTitle;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline,
            color: Theme.of(context).colorScheme.error,
            size: 48,
          ),
          const SizedBox(height: 12),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: onRetry, child: Text(retryCtaTitle)),
        ],
      ),
    );
  }
}
