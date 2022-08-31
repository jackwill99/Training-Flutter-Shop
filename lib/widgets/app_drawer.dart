import 'package:flutter/material.dart';
import 'package:flutter_shop/appbar_image/appbar_image.dart';
import 'package:flutter_shop/clipper/clipper_widget.dart';
import 'package:flutter_shop/custom_paint/custom_paint_index.dart';
import 'package:flutter_shop/full_screen_clip/full_screen_clip.dart';
import 'package:flutter_shop/screens/user_products_screen.dart';

import '../screens/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text('Hello Friend!'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Shop'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Orders'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Manage Products'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          ),

          // clipper
          const Divider(),
          ListTile(
            leading: const Icon(Icons.class_),
            title: const Text('Clipper'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ClipperWidget.routeName);
            },
          ),

          // full screen clipper
          const Divider(),
          ListTile(
            leading: const Icon(Icons.circle),
            title: const Text('Full Screen Clip'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FullScreenClip.routeName);
            },
          ),

          // custom paint
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person_pin_circle_outlined),
            title: const Text('Custom Paint'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(CustomPaintIndex.routeName);
            },
          ),

          // appbar background image
          const Divider(),
          ListTile(
            leading: const Icon(Icons.backup),
            title: const Text('Custom Paint'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(AppBarImage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
