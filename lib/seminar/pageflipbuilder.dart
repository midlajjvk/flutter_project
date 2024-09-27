import 'package:flutter/material.dart';
import 'package:page_flip_builder/page_flip_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Flip Example',
      home: PageFlipWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageFlipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageFlipBuilder(
          frontBuilder: (context) => FrontPageWidget(),
          backBuilder: (context) => BackPageWidget(),
          flipAxis: Axis.horizontal,
          maxTilt: 0.003,
          maxScale: 0.3,
        ),
      ),
    );
  }
}

class FrontPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image(
          image: NetworkImage(
              "https://tse2.mm.bing.net/th?id=OIP.9jUw_dBzcLB4lzqKrPmTHQHaLG&pid=Api&P=0&h"),
        ),
      ),
    );
  }
}

class BackPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Image(
        image: NetworkImage(
            "https://marketplace.canva.com/EAE8rNsITRE/1/0/1131w/canva-blue-and-white-simply-neutral-table-of-contents-book-page-uj9JhH4QEhU.jpg"),
      )),
    );
  }
}
