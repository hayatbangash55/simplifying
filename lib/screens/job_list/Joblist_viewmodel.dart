import 'package:flutter/material.dart';
import 'package:get/get.dart';


class JobListViewModel extends GetxController
    with GetSingleTickerProviderStateMixin {

  late TabController tabController = TabController(length: 3, vsync: this);

  Future<bool> onBackPressed(BuildContext context) async {
    final value = await showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: const Text('Are you sure you want to exit?'),
            actions: <Widget>[
              TextButton(
                child: const Text('No'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: const Text('Yes'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
    return value == true;
  }
}
