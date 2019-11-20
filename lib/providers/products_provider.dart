import 'package:flutter/material.dart';
import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'black shirt',
        description: 'round neck shirt cotton/ black',
        price: 232.34,
        imageUrl:
            'https://5.imimg.com/data5/ME/MT/MY-5600699/black-t-shirt-500x500.jpg'),
    Product(
        id: 'p2',
        title: 'Pants',
        description: 'skinny jeans/ black',
        price: 232.34,
        imageUrl:
            'https://c.static-nike.com/a/images/t_PDP_1280_v1/f_auto/sf6fz56bep74lf6xgq10/hurley-dri-fit-worker-mens-pants-R5QGCH.jpg'),
    Product(
        id: 'p3',
        title: 'Shoes',
        description: 'shoes neck shirt cotton/ black',
        price: 3332.34,
        imageUrl:
            'https://scene7.zumiez.com/is/image/zumiez/pdp_hero/Champion-Men-s-Rally-Pro-Black-%26-White-Shoes-_298256.jpg'),
    Product(
        id: 'p4',
        title: 'Bag',
        description: 'adidas bag/ blackps://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Sups://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Sups://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Sups://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Sups://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Sups://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Sups://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Sups://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Sups://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Su ',
        price: 11232.34,
        imageUrl:
            'https://dks.scene7.com/is/image/dkscdn/17ADIUDFNDRSMLLDFTRV_Bright_Cyan_Subdued_Black_is?wid=1080&fmt=jpg'),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
