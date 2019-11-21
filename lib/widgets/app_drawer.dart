import 'package:flutter/material.dart';
import 'package:shop_app/screens/user_products.dart';
import '../screens/order_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('appdrawer rebuild');
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            alignment: Alignment.center,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Shop App',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryTextTheme.title.color,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Orders'),
            onTap: () {
              Navigator.pushReplacementNamed(context, OrderScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('User Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, UserProducts.routeName);
            },
          ),
        ],
      ),
    );
  }
}
