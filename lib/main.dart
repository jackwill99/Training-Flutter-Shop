import 'package:flutter/material.dart';
import 'package:flutter_shop/appbar_image/appbar_image.dart';
import 'package:flutter_shop/clipper/clipper_widget.dart';
import 'package:flutter_shop/custom_paint/custom_paint_index.dart';
import 'package:flutter_shop/full_screen_clip/full_screen_clip.dart';
import 'package:flutter_shop/screens/edit_product_screen.dart';
import 'package:flutter_shop/screens/user_products_screen.dart';
import 'package:provider/provider.dart';

import './screens/cart_screen.dart';
import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';
import './screens/orders_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            fontFamily: 'Lato',
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                .copyWith(secondary: Colors.deepOrange),
          ),
          debugShowCheckedModeBanner: false,
          home: ProductsOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
            EditProductScreen.routeName: (ctx) => EditProductScreen(),
            ClipperWidget.routeName: (ctx) => const ClipperWidget(),
            FullScreenClip.routeName: (ctx) => const FullScreenClip(),
            CustomPaintIndex.routeName: (ctx) => const CustomPaintIndex(),
            AppBarImage.routeName: (ctx) => const AppBarImage(),
          }),
    );
  }
}
