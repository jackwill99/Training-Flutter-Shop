import 'package:flutter/material.dart';

class AppBarImage extends StatelessWidget {
  static const routeName = '/appbar-image';
  const AppBarImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Suuseeyar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        flexibleSpace: const Image(
          image: AssetImage('assets/images/test.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                filled: true,
                fillColor: Colors.white,
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.black38,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 35),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(25)),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.adf_scanner_outlined,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: const [Text('Hay bro')],
      ),
    );
  }
}
