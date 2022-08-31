import 'package:flutter/material.dart';
import 'package:flutter_shop/custom_paint/custom_paint.dart';

class CustomPaintIndex extends StatefulWidget {
  static const routeName = "/custom-paint-index";
  const CustomPaintIndex({super.key});

  @override
  State<CustomPaintIndex> createState() => _CustomPaintIndexState();
}

class _CustomPaintIndexState extends State<CustomPaintIndex> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CustomAppBar(height: 200),
          ),
        ],
      ),
    );
  }
}
