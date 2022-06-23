import 'package:flutter/material.dart';
import 'package:furniture_flutter/model/purniture.dart';
import 'package:furniture_flutter/theme/color.dart';

class DetailScreen extends StatefulWidget {
  final PurnitureModel data;
  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: smockyBlackColor),
        title: Text(
          widget.data.name,
          style: TextStyle(
            color: jetColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: culturedColor,
      ),
      body: ListView(
        children: [
          Image.network(
            widget.data.image,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.data.name),
                    Text('\$${widget.data.price}')
                  ],
                ),
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index > widget.data.rating
                          ? Icons.star_border
                          : Icons.star,
                      color: Colors.amberAccent,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(widget.data.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
