// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import '../main.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Drop'),
      ),
      body:
      ListView(
        children:[
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 160, 5), child: titlePopularItems,),
          PopularItems(),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 200, 5),
            child: Text(
              'New Items',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  decoration: TextDecoration.underline
              ),
            )
          ),
          NewItems(),
        ],
      ),
    );
  }

  Widget titlePopularItems = const Padding(
    padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
    child: Text(
    'Popular Items',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      decoration: TextDecoration.underline
      ),
    ),
  );

  Container PopularItemsInfo(String imgURL, String itemName) {
    return Container(
      width: 250,
      child: Card(
        child: Wrap(
            children: <Widget>[
              Image.network(imgURL),
              ListTile(
                title:Text(itemName),
              )
            ],
        ),
      ),
    );
  }

  Container NewItemsInfo(String imgURL, String itemName) {
    return Container(
      width: 250,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(imgURL, height: 230, width: 250, fit: BoxFit.fill,),
            ListTile(
              title:Text(itemName),
            )
          ],
        ),
      ),
    );
  }
  
  Widget PopularItems() {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PopularItemsInfo('https://m.media-amazon.com/images/I/81IdRzJZHeL._AC_SY450_.jpg', 'GTX 1080 Ti'),
          PopularItemsInfo('https://m.media-amazon.com/images/I/81IdRzJZHeL._AC_SY450_.jpg', 'GTX 1080 Ti'),
          PopularItemsInfo('https://m.media-amazon.com/images/I/81IdRzJZHeL._AC_SY450_.jpg', 'GTX 1080 Ti')
        ],
      ),
    );
  }

  Widget NewItems() {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          NewItemsInfo('assets/XboxSeriesX_HaloEdition.jpg', 'Xbox Series X Halo Edition'),
          NewItemsInfo('assets/PS5.jpg', 'Xbox Series X Halo Edition'),
          NewItemsInfo('assets/XboxSeriesX.jpg', 'Xbox Series X')
        ],
      ),
    );
  }

}

