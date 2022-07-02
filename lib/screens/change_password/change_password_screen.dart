import 'package:e_shop/components/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Change password',
      ),
      body: Body(),
    );
  }
}
