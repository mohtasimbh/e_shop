
import 'package:e_shop/constants.dart';
import 'package:e_shop/models/Product.dart';
import 'package:e_shop/screens/product_details/components/product_actions_section.dart';
import 'package:e_shop/screens/product_details/components/product_images.dart';
import 'package:e_shop/services/database/product_database_helper.dart';
import 'package:flutter/material.dart';

import 'product_review_section.dart';

class Body extends StatelessWidget {
  final String productId;

  const Body({
    Key? key,
    required this.productId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: FutureBuilder<Product?>(
            future: ProductDatabaseHelper().getProductWithID(productId),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final product = snapshot.data;
                return Column(
                  children: [
                    SizedBox(height: 20),
                    ProductImages(product: product!),
                    SizedBox(height: 20),
                    ProductActionsSection(product: product),
                    SizedBox(height: 20),
                    ProductReviewsSection(product: product),
                    SizedBox(height: 100),
                  ],
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                final error = snapshot.error.toString();
                //Logger().e(error);
              }
              return Center(
                child: Icon(
                  Icons.error,
                  color: kTextColor,
                  size: 60,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
