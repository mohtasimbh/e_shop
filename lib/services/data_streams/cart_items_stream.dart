

import 'package:e_shop/services/data_streams/data_stream.dart';
import 'package:e_shop/services/database/user_database_helper.dart';

class CartItemsStream extends DataStream<List<String>> {
  @override
  void reload() {
    final allProductsFuture = UserDatabaseHelper().allCartItemsList;
    allProductsFuture.then((favProducts) {
    final List favProducts;
      addData(['favProducts']);
    }).catchError((e) {
      addError(e);
    });
  }
}
