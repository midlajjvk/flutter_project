import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add to Cart Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListScreen(),debugShowCheckedModeBanner: false,
    );
  }
}

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<String> products = ['Apple', 'Banana', 'Orange', 'Mango', 'Grapes'];


  final List<String> cartItems = [];


  void addToCart(String product) {
    setState(() {
      cartItems.add(product);
    });
  }


  void removeFromCart(String product) {
    setState(() {
      cartItems.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CartScreen(cartItems: cartItems)));
                },
              ),

              Positioned(
                right: 8,
                top: 8,
                child: cartItems.isNotEmpty
                    ? CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Text(
                    '${cartItems.length}',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                )
                    : Container(),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product),
            trailing: IconButton(
              icon: Icon(
                cartItems.contains(product)
                    ? Icons.remove_shopping_cart
                    : Icons.add_shopping_cart,
                color: cartItems.contains(product) ? Colors.red : Colors.green,
              ),
              onPressed: () {
                cartItems.contains(product)
                    ? removeFromCart(product)
                    : addToCart(product);
              },
            ),
          );
        },
      ),
    );
  }
}


class CartScreen extends StatelessWidget {
  final List<String> cartItems;

  CartScreen({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(
        child: Text('Your cart is empty'),
      )
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            title: Text(item),
          );
        },
      ),
    );
  }
}
