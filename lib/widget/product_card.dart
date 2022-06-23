// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture_flutter/detail_screen.dart';
import 'package:furniture_flutter/model/purniture.dart';
import 'package:furniture_flutter/widget/button_love.dart';

class ProductCard extends StatelessWidget {
  final PurnitureModel data;
  const ProductCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              data: data,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 140,
              padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(data.image),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ButtonLove(),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data.name),
                Text('\$${data.price}'),
              ],
            ),
            Flexible(
              child: Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    index > data.rating ? Icons.star_border : Icons.star,
                    color: Colors.amberAccent,
                    size: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
