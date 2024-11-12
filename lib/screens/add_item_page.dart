import 'package:flutter/material.dart';
import 'package:georshop/widgets/add_item_form.dart';


class AddItemPage extends StatefulWidget {
  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _amount = 0;
  String _description = '';

  void _saveItem() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Item Added'),
          content: Text(
              'Name: $_name\nAmount: $_amount\nDescription: $_description'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AddItemForm(
          formKey: _formKey,
          onNameSaved: (value) => _name = value,
          onAmountSaved: (value) => _amount = value,
          onDescriptionSaved: (value) => _description = value,
          onSubmit: _saveItem,
        ),
      ),
    );
  }
}
