import 'package:flutter/material.dart';
import 'package:quiz/START-CODE/models/grocery.dart';
import 'package:quiz/START-CODE/ui/groceries/grocery_form.dart';
import 'package:quiz/START-CODE/ui/groceries/grocery_list_item.dart';

class GroceryList extends StatelessWidget {
  final List<Grocery> data;
  const GroceryList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Your Groceries"),
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.all(4),
            child: IconButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroceryForm()),
                ),
              },
              icon: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final groceryItem = data[index];
                return GroceryListitem(groceryItem: groceryItem);
              },
            ),
          ),
        ],
      ),
    );
  }
}
