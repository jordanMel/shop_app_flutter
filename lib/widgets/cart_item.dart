import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart.dart';

class CartItem extends StatelessWidget {
  final String title;
  final String productId;
  final double price;
  final String id;
  final int quantity;
  final String imageUrl;

  CartItem(this.id, this.productId, this.title, this.price, this.quantity,
      this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
      child: Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            leading: Container(
              width: 80,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Price: \$${price.toStringAsFixed(2)}'),
                Text('Total: \$${(price * quantity).toStringAsFixed(2)}'),
              ],
            ),
            trailing: Text('$quantity x'),
          ),
        ),
      ),
    );
  }
}
