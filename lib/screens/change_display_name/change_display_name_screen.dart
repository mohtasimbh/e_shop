import 'package:e_shop/components/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class ChangeDisplayNameScreen extends StatelessWidget {
  //TODO: setState being called before build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Change Display Name',
      ),
      body: Body(),
    );
  }
}
