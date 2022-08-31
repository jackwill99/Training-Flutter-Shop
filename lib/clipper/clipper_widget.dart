import 'package:flutter/material.dart';
import 'package:flutter_shop/clipper/clippers.dart';

class ClipperWidget extends StatelessWidget {
  static const routeName = "/clipper";
  const ClipperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Clipper"),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.00,
      // ),
      // extendBody: true,
      resizeToAvoidBottomInset:true,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              elevation: 1.0,
              backgroundColor: Colors.transparent,
              title: Text('Testing'),
            ),
          ),
          ClipPath(
            clipper: BigClipper(),
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          ClipPath(
            clipper: SmallClipper(),
            child: Container(
              color: Colors.red,
            ),
          ),

        ],
      ),
    );
  }
}
