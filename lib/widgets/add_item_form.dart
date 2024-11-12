import 'package:flutter/material.dart';

class AddItemForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final void Function(String) onNameSaved;
  final void Function(int) onAmountSaved;
  final void Function(String) onDescriptionSaved;
  final VoidCallback onSubmit;

  const AddItemForm({
    required this.formKey,
    required this.onNameSaved,
    required this.onAmountSaved,
    required this.onDescriptionSaved,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a name';
              }
              if (value.length < 3) {
                return 'Name should be at least 3 characters';
              }
              return null;
            },
            onSaved: (value) => onNameSaved(value!),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Amount'),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an amount';
              }
              final intValue = int.tryParse(value);
              if (intValue == null || intValue <= 0) {
                return 'Please enter a positive integer';
              }
              return null;
            },
            onSaved: (value) => onAmountSaved(int.parse(value!)),
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Description'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a description';
              }
              if (value.length > 100) {
                return 'Description should be less than 100 characters';
              }
              return null;
            },
            onSaved: (value) => onDescriptionSaved(value!),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onSubmit,
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
