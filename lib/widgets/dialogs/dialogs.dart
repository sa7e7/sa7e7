import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dialogs {
  static final Dialogs _singleton = Dialogs._internal();

  factory Dialogs() {
    return _singleton;
  }

  Dialogs._internal();

  static Widget quizStartDialog({required VoidCallback onTap}) {
    return AlertDialog(
      // title: const Text("Hi.."),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "مرحبا",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text("رجاءَ سجل الدخول قبل بدأ الاختبار"),
        ],
      ),
      actions: <Widget>[
        TextButton(onPressed: onTap, child: const Text('حسنا'))
      ],
    );
  }

  static Future<bool> quizEndDialog() async {
    return (await showDialog(
          context: Get.overlayContext!,
          builder: (context) => AlertDialog(
            title: const Text('هل انت متأكد؟'),
            content: const Text('هل تريد إنهاء الأختبار من غير إكماله'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Get.back(result: false),
                child: const Text('لا'),
              ),
              TextButton(
                onPressed: () => Get.back(result: true),
                child: const Text('نعم'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
