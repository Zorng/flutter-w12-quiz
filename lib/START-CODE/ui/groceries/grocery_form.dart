import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz/START-CODE/models/grocery.dart';

class GroceryForm extends StatefulWidget {
  const GroceryForm({super.key});

  @override
  State<GroceryForm> createState() => _GroceryFormState();
}

class _GroceryFormState extends State<GroceryForm> {
  String name = '';
  String quantity = '';
  GroceryCategory? category;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  void _createItem() {
    name = _nameController.text;
    quantity = _quantityController.text;
    Navigator.pop<Grocery>(
      context,
      Grocery(
        id: DateTime.now().toIso8601String(),
        name: name,
        quantity: int.parse(quantity),
        category: category!,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: Text("Add a new item")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(label: Text("name")),
              controller: _nameController,
              maxLength: 30,
            ),
            Row(
              children: [
                TextField(
                  decoration: InputDecoration(label: Text("Quantity")),
                  controller: _quantityController,
                  keyboardType: TextInputType.number,
                ),
                DropdownButton<Category>(items: category.values.map<DropdownMenuItem<Category>>((category) {return DropdownMenuItem<Category>(value: category, child: Row(children: [
                  Container(
        width: 15
        height: 15,
        color: groceryItem.category.color,
      ),
                ],))}), onChanged: onChanged)
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () => {}, child: Text("reset")),
                FilledButton(onPressed: () => {}, child: Text("Add Item")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
