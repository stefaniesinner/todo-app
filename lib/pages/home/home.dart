import 'package:flutter/material.dart';
import 'package:todo_app/services/remote_service.dart';
import 'package:todo_app/widgets/check_in_button.dart';

import '../checked_in/checked_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: button(context, () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CheckedInPage()),
          );
          RemoteService().apiCall();
        }, 'Check In'),
      ),
    );
  }
}