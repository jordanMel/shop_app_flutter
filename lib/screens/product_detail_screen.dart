import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';
import '../providers/cart.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product_detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final cart = Provider.of<Cart>(context, listen: false);
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.black12,
              height: 300,
              width: double.infinity,
              alignment: Alignment.center,
              child: Image.network(loadedProduct.imageUrl),
            ),
            SizedBox(height: 10),
            Text(
              '\$${loadedProduct.price}',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                loadedProduct.description,
                style: TextStyle(fontSize: 20),
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: 60,
        width: double.infinity,
        child: RaisedButton(
          color: Theme.of(context).accentColor,
          child: Text('Add to Cart'),
          onPressed: () {
            cart.addItem(loadedProduct.id, loadedProduct.title,
                loadedProduct.price, loadedProduct.imageUrl);
          },
        ),
      ),
    );
  }
}
