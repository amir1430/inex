import 'package:flutter/material.dart';
import 'package:inex/data_source/model/transaction.dart';

extension TransactionTypeX on TransactionType {
  Color get color {
    switch (this) {
      case TransactionType.income:
        return Colors.green;
      case TransactionType.expenses:
        return Colors.red;
    }
  }
}

extension BuildContextX on BuildContext {
  void hideSnackbar() {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
  }

  void showSnackbar({
    required Widget content,
    Color color = Colors.grey,
  }) {
    hideSnackbar();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: content,
        backgroundColor: color,
      ),
    );
  }

  Future<void> showGDialog({
    Widget? child,
    bool useRootNavigator = false,
    bool barrierDismissible = true,
    String? barrierLabel,
    Color barrierColor = Colors.black26,
    Offset begin = Offset.zero,
  }) async {
    await showGeneralDialog(
      context: this,
      barrierLabel: barrierLabel ?? 'barrier_label',
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      pageBuilder: (context, animation, secondaryAnimation) {
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: Dialog(
            insetPadding:
                MediaQuery.of(context).viewInsets.copyWith(right: 40, left: 40),
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                top: 12,
                bottom: 12,
              ),
              child: child,
            ),
          ),
        );
      },
    );
  }

  Future<void> showModal({
    Widget? child,
    bool useRootNavigator = false,
  }) async {
    await showModalBottomSheet<void>(
      useRootNavigator: useRootNavigator,
      context: this,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: child,
        );
      },
    );
  }
}
