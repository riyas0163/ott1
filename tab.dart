import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class tab extends StatelessWidget {
  const tab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Container(
          height: 40,
          width: 300,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.qr_code),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mic),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              options:CarouselOptions(
                height: 250,
                aspectRatio: 16/9,
                viewportFraction: 4,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 1300),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 1,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 5,
              itemBuilder: (
                      (BuildContext context, int itemIndex, int pageViewIndex) {

                    return Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets1/tap.jpg"),
                          )
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
