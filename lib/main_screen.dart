import 'package:d_view/d_view.dart';
import 'package:dicoding_projek_1/detail_screen.dart';
import 'package:dicoding_projek_1/model/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toko Stephen', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.settings,
              color: Colors.white,
              size: 25,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DicodingShop shop = shopList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(shop: shop);
              }));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 220,
                    width: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        shop.imageUrls[0], 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      RatingStars(
                        value: shop.rating,
                        starColor: Colors.green,
                        valueLabelVisibility: false,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shop),
                          DView.width(10),
                          Text(shop.shopName, style: TextStyle(fontSize: 16),),
                        ],
                      )
                    ]
                  )
                ],
              ),
            ),
          );
        },
        itemCount: shopList.length,
      ),
    );
  }
}