import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organic_cosmetics_app/data/product.dart';
import 'package:organic_cosmetics_app/data/product_data.dart';
import 'package:organic_cosmetics_app/screens/product_details_screen.dart';
import 'package:organic_cosmetics_app/utils/palatte.dart';
import 'package:organic_cosmetics_app/widgets/circular_icon_button.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    var data = productList;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black54),
        elevation: 0,
        leading: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(color: Colors.black54),
                  ),
                  Text(
                    'Skin Care Products',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  ProductCard(size: width, item: data[3]),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: List.generate(
                        data.length,
                        (index) => ProductCard(
                            size: (width / 2) - 24, item: data[index])),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.white, Colors.white.withOpacity(0)])),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(36),
              width: double.infinity,
              height: 54,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Palette.darkGreen, Palette.lightGreen])),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                  ),
                  Icon(
                    CupertinoIcons.bell,
                    color: Colors.white,
                  ),
                  Icon(
                    CupertinoIcons.person_2,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

class ProductCard extends StatelessWidget {
  final double size;
  final Product item;
  const ProductCard({Key? key, required this.size, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetail(
                      item: item,
                    )));
      },
      child: SizedBox(
        width: size,
        child: Column(
          children: [
            Container(
                width: size,
                height: size,
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipOval(
                        child: Container(
                          width: size * 0.75,
                          height: (size * 0.75),
                          decoration: BoxDecoration(
                            color: Colors.pink.shade200.withAlpha(60),
                          ),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Image.asset(
                            item.image,
                            fit: BoxFit.contain,
                          ),
                        ))
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      item.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      "\$${item.price}",
                      style: Theme.of(context).textTheme.headline6,
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                )),
                CircularIconButton(onPressed: () {}, icon: Icons.add)
              ],
            )
          ],
        ),
      ),
    );
  }
}
