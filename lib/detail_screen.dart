import 'package:d_view/d_view.dart';
import 'package:dicoding_projek_1/model/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.shop});

  final DicodingShop shop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              SizedBox(
                height: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: shop.imageUrls.map((url) {
                    return Image.network(url);
                  }).toList(),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DView.height(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8.0),
                        Text('IDR ${shop.price}', style: TextStyle(fontSize: 16))
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.shop),
                        SizedBox(height: 8.0),
                        Text(shop.shopName, style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ],
                ),
                DView.height(16),
                RatingStars(
                  value: 3.5,
                  starColor: Colors.green,
                ),
                DView.height(16),
                Text(
                  shop.description,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FavoriteButtonState createState() => _FavoriteButtonState();
} 

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
