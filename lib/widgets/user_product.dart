import 'package:flutter/material.dart';
import 'package:shop_app/screens/edit_product_screen.dart';

class UserProduct extends StatelessWidget {
  final String title;
  final String imageUrl;

  UserProduct(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.pushNamed(context, EditProductScreen.routeName);
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
