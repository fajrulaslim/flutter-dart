import 'package:belajar/product_card.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        builder: (context) => ProductBloc(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final Random r = Random();
  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: firstColor,
        title: Text("Listview Builder"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Create Products"),
            onPressed: () {
              bloc.dispatch(r.nextInt(4) + 2);
            },
          ),
          SizedBox(height: 20,),
          BlocBuilder<ProductBloc, List<Product>>(
            builder: (context, products) => Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      (index == 0) ? SizedBox(width: 20,) : Container(),
                      ProductCard(
                        imageURL: products[index].imageURL,
                        name: products[index].name,
                        price: products[index].price.toString(),
                        onAddCartTap: () {},
                        onDecTap: () {},
                        onIntap: () {},
                      ),
                      SizedBox(width: 20,),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  String imageURL;
  String name;
  int price;

  Product({this.imageURL = "", this.name = "", this.price = 0});
}

class ProductBloc extends Bloc<int, List<Product>> {
  @override
  List<Product> get initialState => [];

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];
    for (int i = 0; i < event; i++) {
      products.add(Product(
          imageURL:
              "https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg",
          name: "Produk " + i.toString(),
          price: (i + 1) * 500));
    }
    yield products;
  }
}
