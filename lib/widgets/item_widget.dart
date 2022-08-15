import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      child: ListTile(
          onTap: () {
            print("${item.name} pressed");
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.Desc),
          trailing: Text(
            "\$${item.price}",
            textScaleFactor: 1.2,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          )),
    );
  }
}
