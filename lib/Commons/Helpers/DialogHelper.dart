// ignore_for_file: file_names
import 'package:flutter/material.dart';

class DialogHelper {
  static showDialogBottom(BuildContext context, {List<Widget>? lstItem}) {
    List<Widget> _children = [
      const SizedBox(height: 5),
      const Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: 100,
          child: Divider(
            color: Colors.black45,
            thickness: 7,
          ),
        ),
      ),
      const SizedBox(height: 10)
    ];

    if (lstItem != null && lstItem.isNotEmpty) {
      _children.addAll(lstItem);
    }

    showGeneralDialog(
        context: context,
        barrierLabel: "Barrier",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.3),
        transitionDuration: const Duration(milliseconds: 500),
        transitionBuilder: (_, anim, __, child) {
          return SlideTransition(
            position:
                Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(anim),
            child: child,
          );
        },
        pageBuilder: (_, __, ___) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Dismissible(
                key: const Key('key'),
                direction: DismissDirection.down,
                onDismissed: (_) => Navigator.of(context).pop(),
                child: Container(
                  height: 280,
                  child: Column(
                    children: _children,
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                )),
          );
        });
  }
}
