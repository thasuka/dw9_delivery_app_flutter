import 'package:dw9_delivery_app/app/pages/product_detail/product_detail_page.dart';
import 'package:dw9_delivery_app/app/pages/product_detail/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailRouter {
  ProductDetailRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => ProductDetailController(),
          )
        ],
        builder: (context, child) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          print("args recebido ${args}");
          return ProductDetailPage(
            product: args['product'],
            order: args['order'],
          );
        },
        // child: const ProductDetailPage(),
      );
}
