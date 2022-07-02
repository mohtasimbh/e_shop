import 'package:e_shop/components/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class EditAddressScreen extends StatelessWidget {
  final String? addressIdToEdit;

  const EditAddressScreen({Key? key, this.addressIdToEdit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Edit Address',
      ),
      body: Body(addressIdToEdit: addressIdToEdit),
    );
  }
}
