import 'package:flutter/material.dart';
import 'package:quiz/START-CODE/models/grocery.dart';

class GroceryListitem extends StatelessWidget {
  final Grocery groceryItem;
  const GroceryListitem({super.key, required this.groceryItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 15,
        height: 15,
        color: groceryItem.category.color,
      ),
      title: Text(groceryItem.name),
      trailing: Text("${groceryItem.quantity}"),
    );
  }
}