import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organic_cosmetics_app/data/product.dart';
import 'package:organic_cosmetics_app/utils/palatte.dart';

class ProductDetail extends StatelessWidget {
  final Product item;
  const ProductDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Palette.lightGreen,
                Palette.darkGreen.shade500,
                Palette.darkGreen.shade900,
                Colors.black
              ]))),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    item.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  item.description,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  '\$${item.price}',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 80,
                  margin: const EdgeInsets.all(36),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Palette.lightgreenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(48))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add to bag',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Icon(Icons.shopping_bag_outlined)
                    ],
                  ),
                ),
              ]),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
      )
    ]));
  }
}
